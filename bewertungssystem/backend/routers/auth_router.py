from fastapi import APIRouter, Depends, HTTPException
import sqlite3
from models.user import User, UserCreate, LoginRequest
from database import get_db

router = APIRouter(prefix="/auth", tags=["Auth"])


@router.post("/login", response_model=User)
def login(data: LoginRequest, db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    cur.execute(
        "SELECT id, email, role FROM users WHERE email = ? AND password = ?",
        (data.email, data.password),
    )
    row = cur.fetchone()
    if not row:
        raise HTTPException(401, "Invalid credentials")
    return dict(row)


@router.post("/register", response_model=User)
def register(data: UserCreate, db: sqlite3.Connection = Depends(get_db)):
    cur = db.cursor()
    try:
        cur.execute(
            "INSERT INTO users (email, password, role) VALUES (?,?,?)",
            (data.email, data.password, data.role),
        )
        db.commit()
        cur.execute("SELECT id, email, role FROM users WHERE id = ?", (cur.lastrowid,))
        return dict(cur.fetchone())
    except sqlite3.IntegrityError:
        raise HTTPException(409, "User existiert bereits")
