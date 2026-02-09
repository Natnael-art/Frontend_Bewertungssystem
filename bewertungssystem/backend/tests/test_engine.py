import sqlite3
from core.punktwertung.engine import Bewertungssystem


def setup_test_db():
    conn = sqlite3.connect(":memory:")
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()

    cur.execute("""
        CREATE TABLE kriterien (
            id INTEGER PRIMARY KEY,
            name TEXT,
            wertigkeit TEXT,
            faktor REAL,
            max_punkte INTEGER,
            aktiv BOOLEAN
        )
    """)

    cur.execute("""
        CREATE TABLE bewertung (
            id INTEGER PRIMARY KEY,
            unternehmen_id INTEGER,
            kriterium_id INTEGER,
            punkte REAL,
            kommentar TEXT,
            bewertet_am TEXT,
            benutzer TEXT
        )
    """)

    # Beispiel-Kriterien
    cur.executemany("""
        INSERT INTO kriterien (id, name, wertigkeit, faktor, max_punkte, aktiv)
        VALUES (?, ?, ?, ?, ?, 1)
    """, [
        (1, "Datenschutz", "K.O", 1.0, 10),
        (2, "Usability", "wichtig", 1.5, 10),
        (3, "Support", "Mindestanforderung", 1.0, 10),
        (4, "Extras", "extra", 0.5, 10),
    ])

    return conn


def test_ko_kriterium_fail():
    db = setup_test_db()
    cur = db.cursor()

    cur.execute("""
        INSERT INTO bewertung (unternehmen_id, kriterium_id, punkte)
        VALUES (1, 1, 0)
    """)

    system = Bewertungssystem(db)
    result = system.unternehmens_bewertung_berechnen(1)

    assert result["bestanden"] is False
    assert result["ko_check"]["hat_null_punkte"] is True


def test_kategorie_berechnung():
    db = setup_test_db()
    cur = db.cursor()

    cur.executemany("""
        INSERT INTO bewertung (unternehmen_id, kriterium_id, punkte)
        VALUES (1, ?, ?)
    """, [
        (1, 10),
        (2, 8),
        (3, 5),
        (4, 10),
    ])

    system = Bewertungssystem(db)
    result = system.unternehmens_bewertung_berechnen(1)

    assert "K.O" in result["kategorie_punkte"]
    assert "wichtig" in result["kategorie_punkte"]
    assert "Mindestanforderung" in result["kategorie_punkte"]
    assert "extra" in result["kategorie_punkte"]


def test_gesamtpunktzahl():
    db = setup_test_db()
    cur = db.cursor()

    cur.executemany("""
        INSERT INTO bewertung (unternehmen_id, kriterium_id, punkte)
        VALUES (1, ?, ?)
    """, [
        (1, 10),
        (2, 8),
    ])

    system = Bewertungssystem(db)
    result = system.unternehmens_bewertung_berechnen(1)

    assert result["gesamt_punkte"] > 0
    assert isinstance(result["gesamt_punkte"], float)


def test_leere_bewertungen():
    db = setup_test_db()
    system = Bewertungssystem(db)

    result = system.unternehmens_bewertung_berechnen(99)

    assert result["gesamt_punkte"] == 0
    assert result["bestanden"] is False
    assert result["bewertungen"] == []
