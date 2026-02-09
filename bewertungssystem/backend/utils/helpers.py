"""
Allgemeine Helper-Funktionen für das Backend.
Hier können später Logging, Formatierungen, Validierungen,
oder wiederverwendbare Utility-Funktionen ergänzt werden.
"""

from datetime import datetime


def timestamp_now() -> str:
    """Gibt den aktuellen Timestamp als ISO-String zurück."""
    return datetime.now().isoformat()


def dict_factory(cursor, row):
    """
    Wandelt sqlite3 Rows in normale Python-Dictionaries um.
    Kann optional in database.py genutzt werden:
    conn.row_factory = dict_factory
    """
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d
