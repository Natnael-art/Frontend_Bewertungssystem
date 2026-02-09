import sqlite3

ZUSAETZLICHE_KRITERIEN = [
    # ("Kategorie", "Name", "Beschreibung", "Wertigkeit", Faktor)
    ("Extras", "Mobile App", "Mobile Nutzung der HR-Software", "extra", 0.8),
]


def main():
    conn = sqlite3.connect("bewertungssystem.db")
    cur = conn.cursor()

    for kategorie, name, beschreibung, wertigkeit, faktor in ZUSAETZLICHE_KRITERIEN:
        cur.execute(
            """
            INSERT INTO kriterien (kategorie, name, beschreibung, wertigkeit, faktor)
            VALUES (?, ?, ?, ?, ?)
            """,
            (kategorie, name, beschreibung, wertigkeit, faktor),
        )

    conn.commit()
    conn.close()
    print("Zusätzliche Kriterien hinzugefügt.")


if __name__ == "__main__":
    main()
