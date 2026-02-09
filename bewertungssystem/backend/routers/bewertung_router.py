from fastapi import APIRouter, Depends, HTTPException
import sqlite3
from models.bewertung import Bewertung, BewertungCreate, BewertungDetail
from database import get_db

router = APIRouter(prefix="/bewertungen", tags=["Bewertungen"])

@router.get("/unternehmen/{id}", response_model=list[BewertungDetail])
def get_bewertungen(id: int, db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute("""
        SELECT b.*, k.name AS kriterium_name, k.kategorie AS kriterium_kategorie,
               k.wertigkeit AS kriterium_wertigkeit, k.faktor AS kriterium_faktor
        FROM bewertung b
        JOIN kriterien k ON b.kriterium_id = k.id
        WHERE b.unternehmen_id = ?
    """, (id,))
    return [dict(r) for r in cur.fetchall()]
