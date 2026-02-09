from dataclasses import dataclass
from typing import List, Dict, Any
import sqlite3


@dataclass
class Bewertung:
    kriterium_id: int
    kriterium_name: str
    wertigkeit: str
    faktor: float
    punkte: float
    max_punkte: int
    gewichtete_punktzahl: float
    kommentar: str | None


class Bewertungssystem:
    def __init__(self, db_verbindung: sqlite3.Connection):
        self.db = db_verbindung

    # ---------------------------------------------------------
    # Öffentliche API
    # ---------------------------------------------------------

    def unternehmens_bewertung_berechnen(self, unternehmen_id: int) -> Dict[str, Any]:
        """Berechnet die vollständige Punktzahl-Struktur für ein Unternehmen."""
        bewertungen = self._lade_bewertungen(unternehmen_id)

        if not bewertungen:
            return self._leere_punktzahl_erstellen(unternehmen_id)

        ko_check = self._check_ko_kriterien(bewertungen)
        kategorie_punkte = self._kategorie_punkte_berechnen(bewertungen)
        gesamtpunktzahl = self._gesamt_punktzahl_berechnen(bewertungen)
        analyse = self._staerken_schwachen_analysieren(bewertungen)

        return {
            "unternehmen_id": unternehmen_id,
            "gesamt_punkte": gesamtpunktzahl,
            "bestanden": ko_check["bestanden"],
            "ko_check": ko_check,
            "kategorie_punkte": kategorie_punkte,
            "analyse": analyse,
            "bewertungen": [
                Bewertung(
                    kriterium_id=row["kriterium_id"],
                    kriterium_name=row["kriterium_name"],
                    wertigkeit=row["wertigkeit"],
                    faktor=row["faktor"],
                    punkte=row["punkte"],
                    max_punkte=row["max_punkte"],
                    gewichtete_punktzahl=row["punkte"] * row["faktor"],
                    kommentar=row["kommentar"],
                ).__dict__
                for row in bewertungen
            ],
        }

    def unternehmen_vergleichen(self, unternehmen_ids: List[int]) -> List[Dict[str, Any]]:
        """Vergleicht mehrere Unternehmen miteinander."""
        vergleich: List[Dict[str, Any]] = []

        for unternehmen_id in unternehmen_ids:
            punkte = self.unternehmens_bewertung_berechnen(unternehmen_id)

            cur = self.db.cursor()
            cur.execute(
                "SELECT name, branche FROM unternehmen WHERE id = ?",
                (unternehmen_id,),
            )
            unternehmen_data = cur.fetchone()

            vergleich.append(
                {
                    "unternehmen_id": unternehmen_id,
                    "name": unternehmen_data["name"] if unternehmen_data else f"Unternehmen {unternehmen_id}",
                    "branche": unternehmen_data["branche"] if unternehmen_data else "",
                    "gesamt_punkte": punkte["gesamt_punkte"],
                    "bestanden": punkte["bestanden"],
                    "kategorie_punkte": punkte["kategorie_punkte"],
                    "analyse": punkte["analyse"],
                }
            )

        vergleich.sort(key=lambda x: x["gesamt_punkte"], reverse=True)
        return vergleich

    # ---------------------------------------------------------
    # Interne Helfer
    # ---------------------------------------------------------

    def _lade_bewertungen(self, unternehmen_id: int) -> List[sqlite3.Row]:
        cur = self.db.cursor()
        cur.execute(
            """
            SELECT
                k.id AS kriterium_id,
                k.name AS kriterium_name,
                k.wertigkeit,
                k.faktor,
                k.max_punkte,
                COALESCE(b.punkte, 0) AS punkte,
                b.kommentar,
                b.bewertet_am
            FROM kriterien k
            LEFT JOIN bewertung b
                ON k.id = b.kriterium_id
               AND b.unternehmen_id = ?
            WHERE k.aktiv = TRUE
            ORDER BY k.id
            """,
            (unternehmen_id,),
        )
        return cur.fetchall()

    def _check_ko_kriterien(self, bewertungen: List[sqlite3.Row]) -> Dict[str, Any]:
        ko_kriterien = [b for b in bewertungen if b["wertigkeit"] == "K.O"]
        fehlgeschlagen_ko: List[Dict[str, Any]] = []

        for kriterium in ko_kriterien:
            if kriterium["punkte"] == 0:
                fehlgeschlagen_ko.append(
                    {
                        "kriterium": kriterium["kriterium_name"],
                        "punkte": kriterium["punkte"],
                        "grund": "K.O.-Kriterium hat 0 Punkte",
                    }
                )
            elif kriterium["punkte"] < 5:
                fehlgeschlagen_ko.append(
                    {
                        "kriterium": kriterium["kriterium_name"],
                        "punkte": kriterium["punkte"],
                        "grund": "K.O.-Kriterium unter 5 Punkten",
                    }
                )

        hat_null_punkte = any(ko["punkte"] == 0 for ko in fehlgeschlagen_ko)
        unter_fuenf_punkte = [
            ko for ko in fehlgeschlagen_ko if 0 < ko["punkte"] < 5
        ]

        bestanden = not (hat_null_punkte or len(unter_fuenf_punkte) >= 2)

        return {
            "bestanden": bestanden,
            "fehlgeschlagen_kriterien": fehlgeschlagen_ko,
            "hat_null_punkte": hat_null_punkte,
            "anzahl_unter_fuenf": len(unter_fuenf_punkte),
        }

    def _kategorie_punkte_berechnen(self, bewertungen: List[sqlite3.Row]) -> Dict[str, Any]:
        kategorien = {
            "K.O": {"punkte": 0.0, "faktoren": 0.0, "zaehlen": 0},
            "wichtig": {"punkte": 0.0, "faktoren": 0.0, "zaehlen": 0},
            "Mindestanforderung": {"punkte": 0.0, "faktoren": 0.0, "zaehlen": 0},
            "extra": {"punkte": 0.0, "faktoren": 0.0, "zaehlen": 0},
        }

        for b in bewertungen:
            wertigkeit = b["wertigkeit"]
            if wertigkeit in kategorien and b["faktor"] > 0:
                kategorien[wertigkeit]["punkte"] += b["punkte"] * b["faktor"]
                kategorien[wertigkeit]["faktoren"] += b["faktor"]
                kategorien[wertigkeit]["zaehlen"] += 1

        ergebnis: Dict[str, Any] = {}
        for kategorie, data in kategorien.items():
            if data["faktoren"] > 0:
                ergebnis[kategorie] = {
                    "punkte": round(data["punkte"] / data["faktoren"], 2),
                    "gewichtung": data["faktoren"],
                    "anzahl_kriterien": data["zaehlen"],
                }
            else:
                ergebnis[kategorie] = {
                    "punkte": 0,
                    "gewichtung": 0,
                    "anzahl_kriterien": 0,
                }

        return ergebnis

    def _gesamt_punktzahl_berechnen(self, bewertungen: List[sqlite3.Row]) -> float:
        gesamt_gewichtete_punkte = 0.0
        gesamt_faktoren = 0.0

        for b in bewertungen:
            if b["faktor"] > 0:
                gesamt_gewichtete_punkte += b["punkte"] * b["faktor"]
                gesamt_faktoren += b["faktor"]

        if gesamt_faktoren == 0:
            return 0.0

        return round(gesamt_gewichtete_punkte / gesamt_faktoren, 2)

    def _staerken_schwachen_analysieren(self, bewertungen: List[sqlite3.Row]) -> Dict[str, Any]:
        staerken = [
            {
                "kriterium": b["kriterium_name"],
                "punkte": b["punkte"],
                "wertigkeit": b["wertigkeit"],
            }
            for b in bewertungen
            if b["punkte"] >= 9 and b["faktor"] > 0
        ]

        schwachen = [
            {
                "kriterium": b["kriterium_name"],
                "punkte": b["punkte"],
                "wertigkeit": b["wertigkeit"],
            }
            for b in bewertungen
            if b["punkte"] <= 4 and b["faktor"] > 0
        ]

        kritische_ko = [
            {
                "kriterium": b["kriterium_name"],
                "punkte": b["punkte"],
                "grund": "K.O.-Kriterium mit niedrigen Punkten",
            }
            for b in bewertungen
            if b["wertigkeit"] == "K.O" and b["punkte"] < 6
        ]

        return {
            "staerken": sorted(staerken, key=lambda x: x["punkte"], reverse=True),
            "schwachen": sorted(schwachen, key=lambda x: x["punkte"]),
            "kritische_ko": kritische_ko,
            "anzahl_staerken": len(staerken),
            "anzahl_schwachen": len(schwachen),
        }

    def _leere_punktzahl_erstellen(self, unternehmen_id: int) -> Dict[str, Any]:
        return {
            "unternehmen_id": unternehmen_id,
            "gesamt_punkte": 0.0,
            "bestanden": False,
            "ko_check": {
                "bestanden": False,
                "fehlgeschlagen_kriterien": [
                    {
                        "kriterium": "Keine Bewertungen",
                        "grund": "Unternehmen hat keine Bewertungen",
                    }
                ],
                "hat_null_punkte": True,
                "anzahl_unter_fuenf": 0,
            },
            "kategorie_punkte": {},
            "analyse": {
                "staerken": [],
                "schwachen": [],
                "kritische_ko": [],
                "anzahl_staerken": 0,
                "anzahl_schwachen": 0,
            },
            "bewertungen": [],
        }
