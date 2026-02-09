from fastapi import APIRouter, Depends, HTTPException
import sqlite3
from models.kriterium import Kriterium
from database import get_db

router = APIRouter(prefix="/kriterien", tags=["Kriterien"])

@router.get("/", response_model=list[Kriterium])
def get_kriterien(db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute("SELECT * FROM kriterien WHERE aktiv = TRUE ORDER BY id")
    return [dict(r) for r in cur.fetchall()]
