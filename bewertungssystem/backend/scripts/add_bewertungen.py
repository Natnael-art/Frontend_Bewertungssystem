import sqlite3

BEWERTUNGEN = [
    # (unternehmen_id, kriterium_id, punkte, kommentar, benutzer)
    (1, 1, 9, "Sehr gute Stammdatenverwaltung", "Admin"),
    (1, 2, 8, "Zeiterfassung solide", "Admin"),
    (1, 3, 7, "Abwesenheit ok", "Admin"),
    (2, 1, 6, "Stammdaten okay", "Admin"),
    (2, 2, 5, "Zeiterfassung verbesserungsfähig", "Admin"),
]


def main():
    conn = sqlite3.connect("bewertungssystem.db")
    cur = conn.cursor()

    for u_id, k_id, punkte, kommentar, benutzer in BEWERTUNGEN:
        cur.execute(
            """
            INSERT OR REPLACE INTO bewertung
            (unternehmen_id, kriterium_id, punkte, kommentar, benutzer)
            VALUES (?, ?, ?, ?, ?)
            """,
            (u_id, k_id, punkte, kommentar, benutzer),
        )

    conn.commit()
    conn.close()
    print("Bewertungen hinzugefügt.")


if __name__ == "__main__":
    main()
