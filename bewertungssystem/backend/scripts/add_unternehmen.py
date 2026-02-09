import sqlite3

UNTERNEHMEN = [
    ("Nati Solutions", "IT / HR-Software", "10-20", "https://nati-solutions.de"),
    ("Nürnberg HR Suite", "HR-Software", "50-100", "https://nuernberg-hr.de"),
    ("Demo HR Cloud", "Cloud HR", "100-250", "https://demo-hr-cloud.de"),
]


def main():
    conn = sqlite3.connect("bewertungssystem.db")
    cur = conn.cursor()

    for name, branche, mitarbeiter_range, website in UNTERNEHMEN:
        cur.execute(
            """
            INSERT OR IGNORE INTO unternehmen (name, branche, mitarbeiter_range, website)
            VALUES (?, ?, ?, ?)
            """,
            (name, branche, mitarbeiter_range, website),
        )

    conn.commit()
    conn.close()
    print("Unternehmen hinzugefügt.")


if __name__ == "__main__":
    main()
