import requests
import json 
from tabulate import tabulate
"""
BASE_URL = "http://127.0.0.1:8000"
 
def main():
     
    antwort = requests.get(f"{BASE_URL}/kriterien")
    if antwort.status_code == 200:
        kriterien = antwort.json()
         
         
        # 1. Speicheren als Json-Datei
        with open("kriterien.json", "w", encoding="utf-8") as f:
            
            json.dump(kriterien, f, ensure_ascii=False, indent=4)
        print("Kriterien gespeichert in Kriterien.json")
        
        # tabellarisch im Terminal ausgeben 
        tabelle = [
            [k["id"], k["name"], k["kategorie"], k["wertigkeit"], k["beschreibung"]]
            for k in kriterien
        ]
        kopfzeilen = ["ID", "Name", "Kategorie", "Wertigkeit", "Beschreibung"]
        print(tabulate(tabelle, headers=kopfzeilen, tablefmt="grid"))
    else:
        print("Fehler:", antwort.status_code)

if __name__ == "__main__":
    main()   

"""
"""
def main():
    # Lokale Datei statt API
    with open("scripts/response_1764845876322.json", "r", encoding="utf-8") as f:
        kriterien = json.load(f)

    # Tabelle vorbereiten
    table = [
        [k["id"], k["name"], k["kategorie"], k["wertigkeit"], k["beschreibung"]]
        for k in kriterien
    ]
    headers = ["ID", "Name", "Kategorie", "Wertigkeit", "Beschreibung"]

    print(tabulate(table, headers=headers, tablefmt="grid"))

if __name__ == "__main__":
    main()

"""
import json
from rich.console import Console
from rich.table import Table

def main():
    with open("scripts/response_1764845876322.json", "r", encoding="utf-8") as f:
        kriterien = json.load(f)

    console = Console()
    table = Table(title="Kriterien Übersicht")

    table.add_column("ID", style="cyan", width=5)
    table.add_column("Name", style="green", width=20)
    table.add_column("Kategorie", style="magenta", width=15)
    table.add_column("Wertigkeit", style="yellow", width=10)
    table.add_column("Beschreibung", style="white", width=50, overflow="fold")  # Umbruch

    for k in kriterien:
        table.add_row(str(k["id"]), k["name"], k["kategorie"], str(k["wertigkeit"]), k["beschreibung"])

    console.print(table)

if __name__ == "__main__":
    main()

"""
import json
from tabulate import tabulate  # pip install tabulate

# JSON-Daten hier direkt eingefügt:
kriterien = [
    {
        "name": "Stammdaten & Verwaltung",
        "kategorie": "Stammdaten",
        "beschreibung": "Persönliche Daten, Vertragsdaten, Dokumenten-Managment, Organisations-Struktur",
        "wertigkeit": "K.O",
        "faktor": 2,
        "id": 1,
        "max_punkte": 10,
        "aktiv": True
    },
    {
        "name": "Zeiterfassung",
        "kategorie": "Zeiterfassung",
        "beschreibung": "Arbeitszeiten erfassen, Pause, Überstunden, Projekt-Zuordnung, Mobile Erfassung",
        "wertigkeit": "K.O",
        "faktor": 2,
        "id": 2,
        "max_punkte": 10,
        "aktiv": True
    },
    # alle Kriterien einfügen
]

# 1. Speichern als JSON-Datei
with open("kriterien.json", "w", encoding="utf-8") as f:
    json.dump(kriterien, f, ensure_ascii=False, indent=4)

print("Kriterien gespeichert in kriterien.json")

# 2. Tabellarisch im Terminal ausgeben
table = [[k["id"], k["name"], k["kategorie"], k["wertigkeit"], k["faktor"], k["max_punkte"], k["aktiv"]] for k in kriterien]
headers = ["ID", "Name", "Kategorie", "Wertigkeit", "Faktor", "Max Punkte", "Aktiv"]

print(tabulate(table, headers=headers, tablefmt="grid"))

# 4.
# 5.
# 6.
"""
"""

"""