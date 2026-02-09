from fastapi import APIRouter, Depends, HTTPException
import sqlite3
from models.unternehmen import Unternehmen, UnternehmenCreate
from database import get_db

router = APIRouter(prefix="/unternehmen", tags=["Unternehmen"])

@router.get("/", response_model=list[Unternehmen])
def get_unternehmen(db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute("SELECT * FROM unternehmen ORDER BY name")
    return [dict(r) for r in cur.fetchall()]

@router.get("/{id}", response_model=Unternehmen)
def get_unternehmen_by_id(id: int, db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute("SELECT * FROM unternehmen WHERE id = ?", (id,))
    row = cur.fetchone()
    if not row:
        raise HTTPException(404, "Unternehmen nicht gefunden")
    return dict(row)

@router.post("/", response_model=Unternehmen)
def create_unternehmen(data: UnternehmenCreate, db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute(
        "INSERT INTO unternehmen (name, branche, mitarbeiter_range, website) VALUES (?,?,?,?)",
        (data.name, data.branche, data.mitarbeiter_range, data.website)
    )
    db.commit()
    cur.execute("SELECT * FROM unternehmen WHERE id = ?", (cur.lastrowid,))
    return dict(cur.fetchone())
