from fastapi import APIRouter, Depends, HTTPException
import sqlite3

from database import get_db
from core.punktwertung.engine import Bewertungssystem

router = APIRouter(prefix="/punkte", tags=["Punkte"])


# ---------------------------------------------------------
# 1) Punktestand eines Unternehmens
# ---------------------------------------------------------
@router.get("/unternehmen/{unternehmen_id}")
def get_unternehmen_punkte(unternehmen_id: int, db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute("SELECT id, name FROM unternehmen WHERE id = ?", (unternehmen_id,))
    unternehmen = cur.fetchone()

    if not unternehmen:
        raise HTTPException(404, "Unternehmen nicht gefunden")

    system = Bewertungssystem(db)
    ergebnis_liste = system.Unternehmens_bewertung_berechnen(unternehmen_id)

    if not ergebnis_liste:
        raise HTTPException(404, "Keine Bewertung gefunden")

    ergebnis = ergebnis_liste[0]

    return {
        "unternehmen_id": unternehmen_id,
        "unternehmen_name": unternehmen["name"],
        "gesamt_punktzahlen": round(ergebnis["gesamt_punkte"], 2),
        "punkte_nach_kategorie": ergebnis["punkte_nach_kategorie"],
        "punkte_nach_wertigkeit": ergebnis["punkte_nach_wertigkeit"],
    }


# ---------------------------------------------------------
# 2) Vergleich mehrerer Unternehmen
# ---------------------------------------------------------
@router.post("/vergleichen")
def unternehmen_vergleichen(unternehmen_ids: list[int], db: sqlite3.Connection = Depends(get_db)):
    if len(unternehmen_ids) < 2:
        raise HTTPException(400, "Mindestens 2 Unternehmen erforderlich")

    if len(unternehmen_ids) > 5:
        raise HTTPException(400, "Maximal 5 Unternehmen erlaubt")

    cur = db.cursor()
    placeholders = ",".join("?" * len(unternehmen_ids))
    cur.execute(f"SELECT id FROM unternehmen WHERE id IN ({placeholders})", unternehmen_ids)
    vorhandene = [r["id"] for r in cur.fetchall()]

    fehlende = set(unternehmen_ids) - set(vorhandene)
    if fehlende:
        raise HTTPException(404, f"Nicht gefunden: {fehlende}")

    system = Bewertungssystem(db)
    vergleich = system.Unternehmens_bewertung_berechnen(unternehmen_ids)

    return {
        "vergleich": vergleich,
        "bester_punkte": vergleich[0]["gesamt_punkte"] if vergleich else 0,
        "anzahl_unternehmen": len(vergleich),
    }


# ---------------------------------------------------------
# 3) Rangliste aller Unternehmen
# ---------------------------------------------------------
@router.get("/rangliste")
def rangliste_abrufen(db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute("SELECT id FROM unternehmen")
    ids = [r["id"] for r in cur.fetchall()]

    if not ids:
        return {"rangliste": [], "nachricht": "Keine Unternehmen vorhanden"}

    system = Bewertungssystem(db)
    rangliste = system.Unternehmens_bewertung_berechnen(ids)

    for index, eintrag in enumerate(rangliste, 1):
        eintrag["rang"] = index

    return {
        "rangliste": rangliste,
        "anzahl_unternehmen": len(rangliste),
        "durchschnitts_punkte": round(
            sum(u["gesamt_punkte"] for u in rangliste) / len(rangliste), 2
        ),
    }


# ---------------------------------------------------------
# 4) Dashboard für ein Unternehmen
# ---------------------------------------------------------
@router.get("/dashboard/{unternehmen_id}")
def get_dashboard(unternehmen_id: int, db: sqlite3.Connection = Depends(get_db)):
    system = Bewertungssystem(db)

    # Einzelpunkte
    punkte_liste = system.Unternehmens_bewertung_berechnen(unternehmen_id)
    punkte = punkte_liste[0] if punkte_liste else None

    # Rangliste
    cur = db.cursor()
    cur.execute("SELECT id FROM unternehmen")
    ids = [r["id"] for r in cur.fetchall()]
    rangliste = system.Unternehmens_bewertung_berechnen(ids)

    position = next(
        (i + 1 for i, u in enumerate(rangliste) if u["unternehmen_id"] == unternehmen_id),
        None,
    )

    return {
        "punkte": punkte,
        "rangliste_position": position,
        "gesamt_rangliste": rangliste,
    }
