"""
utils.py
Allgemeine Hilfsfunktionen für die Punktwertung.
"""

from typing import List, Dict
import sqlite3


def fetch_all(cursor: sqlite3.Cursor) -> List[Dict]:
    """
    Wandelt sqlite3 Rows in normale Dictionaries um.
    """
    rows = cursor.fetchall()
    return [dict(row) for row in rows]


def round_score(value: float, digits: int = 2) -> float:
    """
    Rundet Punktzahlen sauber.
    """
    try:
        return round(float(value), digits)
    except Exception:
        return 0.0


def safe_get(row: sqlite3.Row, key: str, default=None):
    """
    Sicheres Auslesen eines Keys aus sqlite3.Row.
    """
    return row[key] if key in row.keys() else default
