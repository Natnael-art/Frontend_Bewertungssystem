#Score-Berechnung & K.O.-Regeln
# Punktbewertung
from dataclasses import dataclass
from typing import List, Dict, Any
import sqlite3


@dataclass
class Bewertung:
    kriterium_id: int
    kriterium_name: str
    wertigkeit: str
    faktor: float
    punkte: int
    max_punkte: int
    gewichtete_punktzahl: float
    kommentar: str | None

@dataclass
class UnternehmenPunkte:
    Unternehmen_id: int
    gesamt_punktzahlen: int
    bestanden: bool
    ko_check: Dict[str, Any]
    kategorie_punkte: Dict[str, Any]
    analyse: Dict[str, Any]
    bewertungen: List[Bewertung]

class Bewertungssystem:
    def __init__(self, db_verbindung: sqlite3.Connection):
        self.db = db_verbindung
        
        
    def Unternehmens_bewertung_berechnen(self, unternehmen_id: int) -> UnternehmenPunkte:
        stift_schreiber = self.db.cursor()
        stift_schreiber.execute("""
            SELECT
                k.id as kriterium_id,
                k.name as kriterium_name,
                k.wertigkeit,
                k.faktor
                k.max_punkte,
                COALESCE(b.punkte, 0) as punkte,
                b.kommentar,
                b.bewertet_am
            FROM kriterien k
            LEFT JOIN bewertungen b ON k.id = b.kriterium_id AND b.unternehmen_id = ?
            WHERE k.aktiv = TRUE
            ORDER BY k.id
        """,(unternehmen_id,))
        
        bewertungen = stift_schreiber.fetchall()
        if not bewertungen:
            return UnternehmenPunkte(
                unternehmen_id=unternehmen_id,
                gesamt_punktzahlen=0.0,
                bestanden=False,
                ko_check={"bestanden": False, "kriterien_fehlgeschlagen": [], "hat_null_punkte": True, "anzahl_unter_fuenf": 0},
                kategorie_punkte={},
                analyse={"staerken": [], "schwächen": [], "kritische_ko": [], "anzahl_staerken": 0, "anzahl_schwachen": 0},
                bewertungen=[]
            )
        
        # interne Berechnungen 
        ko_check = self._check_ko_kriterien(bewertungen)
        kategorie_punkte = self._kategorie_punktzahlen_berechnen(bewertungen)
        gesamtpunktzahl = self._gesamt_punktzahl_berechnen(bewertungen)
        analyse = self._analysieren_staerken_schwachen(bewertungen)
        
        return UnternehmenPunkte(
            unternehmen_id=unternehmen_id,
            gesamt_punktzahlen=gesamtpunktzahl,
            bestanden=ko_check["bestanden"],
            ko_check=ko_check,
            kategorie_Punkte=kategorie_punkte,
            analyse=analyse,
            bewertungen=[
                Bewertung(
                    kriterium_id=reihe["kriterium_id"],
                    kriterium_name=reihe["kriterium_name"],
                    wertigkeit=reihe["wertigkeit"],
                    faktor=reihe["faktor"],
                    punkte=reihe["punkte"],
                    max_punkte=reihe["max_punkte"],
                    gewichtete_punktzahl=reihe["punkte"] * reihe["faktor"],
                    kommentar=reihe["kommentar"]
                )
                for reihe in bewertungen
            ]
        )
    def _check_ko_kriterien(self, bewertungen: List)  -> Dict:
        """prüft K.O.:Kriterien gemäß deiner Regeln"""
        
        ko_kriterien = [b for b in bewertungen if b ["wertigkeit"] == "K.O."]
        fehlgeschlagen_ko = []
        
        for kriterium in ko_kriterien:
            # K.O.-Regel: 0 Punkte = sofort durchgefallen 
            if kriterium["punkte"] == 0:
                fehlgeschlagen_ko.append({
                    "kriterium": kriterium["kriterium_name"],
                    "punkte": kriterium["punkte"],
                    "grund": "K.O.-Kriterium hat 0 Punkte"
                })
            
            # Zusätzlich Meherer K.O.-Kriterien untr 5 Punkte
            elif kriterium["punkte"] < 5:
                fehlgeschlagen_ko.append({
                    "kriterium": kriterium["kriterium_name"],
                    "punkte": kriterium["punkte"],
                    "grund": "K.O.-Kriterium unter 5 Punkten"
                })
                
        # Entscheidung: Durchgefallen wenn mindestens ein K.O. Punkte hat 
        # Oder mehr als 2 K.O.-Kriterien unter 5 Punkten
        hat_null_punkte = any(ko["punkte"] == 0 for ko in fehlgeschlagen_ko)
        unter_fuenf_punkte = [ko for ko in fehlgeschlagen_ko if ko["punkte"] < 5 and ko["punkte"]  > 0]
        
        bestanden = not (hat_null_punkte or len(unter_fuenf_punkte)  >= 2)
        
        return{
            "bestanden": bestanden,
            "fehlgeschlagen_kriterien": fehlgeschlagen_ko,
            "hat_null_punkte": hat_null_punkte,
            "anzahl_unter_fuenf": len(unter_fuenf_punkte)
        }
    def _kategorie_punkte_berechnen(self, bewertungen: List) -> Dict:
        """Berechnet Scores pro Wertigkeit-Katagorie"""
        
        kategories = {
            "K.O.": {"punkte": 0, "faktoren": 0, "zaehlen": 0},
            "wichtig": {"punkte": 0, "faktoren": 0, "zaehlen": 0},
            "Mindestanforderung": {"punkte": 0, "faktoren": 0, "zaehlen": 0},
            "extra": {"punkte": 0, "faktoren": 0, "zaehlen": 0}
        }
        
        for bewertung in bewertungen:
            wertigkeit = bewertung["wertigkeit"]
            if wertigkeit in kategories and bewertung["faktor"] > 0:
                kategories[wertigkeit]["punkte"] += bewertung["punkte"] * bewertung["faktor"]
                kategories[wertigkeit]["faktoren"] += bewertung["faktor"]
                kategories[wertigkeit]["zaehlen"] += 1
        
        # Druchschnitt pro Kategorie berechnen 
        katagorie_punktzahl = {}
        for kategorie, data in kategories.items():
            if data["faktoren"] > 0:
                katagorie_punktzahl[kategorie] = {
                    "punkte": round(data["punkte"] / data["faktoren"], 2),
                    "gewichtung": data["faktoren"],
                    "anzahl_kriterien": data["zaehlen"]
                }
            else:
                katagorie_punktzahl[kategorie] = {
                    "punkte": 0,
                    "gewichtung": 0,
                    "anzahl_kriterien": 0,
                }
        return katagorie_punktzahl
    
    def _gesamt_punktzahl_berechnen(self, bewertungen:List) -> float:
        """Berechner gewichteten Gesamte-Score"""
        
        gesamt_gewichtete_Punkte = 0
        gesamt_faktoren = 0
        
        for bewertung in bewertungen:
            # Nur Kriterien mit faktoren > 0 zählen, Ohne Wertung wird ignoriert
            if bewertung["faktor"] > 0:
                gesamt_gewichtete_Punkte += bewertung["punkte"] * bewertung["faktor"]
                gesamt_faktoren += bewertung["faktor"]
        
        if gesamt_faktoren == 0:
            return 0.0
        
        return round(gesamt_gewichtete_Punkte / gesamt_faktoren, 2)
    
    def _staerken_schwachen_analysieren(self, bewertungen: List) -> Dict:
        """Analxsiert Stärke und Schwäche"""
        
        # Stärke Kriterien mit 9-10 Punkten
        staerken = [
            {
                "kriterium": b["kriterium_name"],
                "punkte": b["punkte"],
                "wertigkeit": b["wertigkeit"]
            }
            for b in bewertungen
            if b["punkte"] >= 9 and b["faktor"] > 0
        ]
        
        # Schwäche Kriterien mit <= 4 Punkten 
        schwachen = [
            {
                "kriterium": b["kriterium_name"],
                "punkte": b["punkte"],
                "wertigkeit": b["wertigkeit"]
            }
            for b in bewertungen
            if b["punkte"] <= 4 and b["faktor"] > 0
        ]
        
        # Kritische K.O-Kriterien
        kritische_ko = [
            {
                "kriterium": b["kriterium_name"],
                "punkte": b["punkte"],
                "grund": b["K.O-Kriterium mit niedrigen Punkten"]
            }
            for b in bewertungen
            if b["wertigkeit"] == "K.O" and b["punkte"] < 6
        ]
        
        return {
            "staerken": sorted(staerken, key=lambda x: x["punkte"], reverse=True),
            "schwachen": sorted(schwachen, key=lambda x: x["punkte"]),
            "kritische_ko": kritische_ko,
            "anzahl_staerken": len(staerken),
            "anzahl_schwachen": len(schwachen)
        }
    
    def _leere_Punktzahl_erstellen(self, unternehmen_id: int) -> Dict:
        """Erstellt leeres Scores-Objekt für Unternehmen ohne Bewertungen"""
        return{
            "unternehmen_id": unternehmen_id,
            "gesamt_punkte": 0.0,
            "bestanden": False,
            "ko_check": {
                "bestanden": False,
                "fehlgeschlagen_kriterien": [{"kriterium": "KEine Bewertungen", "grund": "Unternehmen hat keine Bewertungen"}],
                "hat_null_punkte": True,
                "anzahl_unter_fuenf": 0
            },
            "kategorie_punkte": {},
            "analyse": {
                "staerken": [],
                "schwachen": [],
                "kritische_ko": [],
                "anzahl_staerken": 0,
                "anzahl_schwachen": 0,
            },
            "bewertungen": []
        }
    
    def unternehmen_vergleichen(self, unternehmen_ids: List[int]) -> List[Dict]:
        """vergleicht mehrere Unternehmen miteinader"""
        
        vergleich = []
        for unternehmen_id in unternehmen_ids:
            punkte = self.Unternehmens_bewertung_berechnen(unternehmen_id)
            
            # Unternhemnen Daten hinzufügen
            stift_schreiber = self.db.cursor()
            stift_schreiber.execute("SELECT name, branche FROM unternehmen WHERE id = ?", (unternehmen_id,))
            unternehmen_data = stift_schreiber.fetchone()
            
            vergleich.append({
                "unternehmen_id": unternehmen_id,
                "name": unternehmen_data["name"] if unternehmen_data else f"Unternehmen{unternehmen_id}",
                "branche": unternehmen_data["branche"] if unternehmen_data else "",
                "gesamt_punkte": punkte["gesamt_punkte"],
                "bestanden": punkte["bestanden"],
                "kategorie_punkte": punkte["kategorie_punkte"],
                "analyse": punkte["analyse"]
            })
             
        # nach Punkte sortieren
        vergleich.sort(key=lambda x: x["gesamt_punkte"], reverse=True)
        
        return vergleich
if __name__ == "__main__":
    # Beispiel-Daten zum Testen
    bewertungen = [
        {"kriterium_id": 1, "kriterium_name": "Datenschutz", "wertigkeit": "K.O.", "faktor": 1.0, "punkte": 0},
        {"kriterium_id": 2, "kriterium_name": "Usability", "wertigkeit": "wichtig", "faktor": 1.5, "punkte": 8},
        {"kriterium_id": 3, "kriterium_name": "Support", "wertigkeit": "Mindestanforderung", "faktor": 1.0, "punkte": 4},
        {"kriterium_id": 4, "kriterium_name": "Extras", "wertigkeit": "extra", "faktor": 0.5, "punkte": 10}
    ]

    system = Bewertungssystem(db_verbindung=None)

    print("K.O.-Check:")
    print(system._check_ko_kriterien(bewertungen))

    print("\nKategorie-Punkte:")
    print(system._kategorie_punkte_berechnen(bewertungen))

    print("\nGesamtpunktzahl:")
    print(system._gesamt_punktzahl_berechnen(bewertungen))

    print("\nAnalyse Stärken/Schwächen:")
    print(system._staerken_schwachen_analysieren(bewertungen))
