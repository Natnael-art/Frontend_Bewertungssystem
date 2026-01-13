import requests

# API basis-URL
BASE_URL = "http://127.0.0.1:8000"

# Firmen, die hinzugefügt werden sollen 
unternehmen = [
    {
        "name": "Nati Solution",
        "branche": "IT",
        "mitarbeiter_range": "10-20",
        "website": "https://nati.de"
    },
    {
        "name": "Nbg Consulting",
        "branche": "Beratung",
        "mitarbeiter_range": "500-600",
        "website": "https://nbg.de"
    }
]

# Firmen nacheinader hinzufügen 
for unternehm in unternehmen:
    antwort = requests.post(f"{BASE_URL}/unternehmen", json=unternehm)
    if antwort.status_code == 200:
        print(" Erforgreich hinzugefügt.", antwort.json())
    else:
        print("Fehler:", antwort.status_code, antwort.text)


# Alle Firmen abrufen
print("\n Aktuelle Firmen in der Datenbank:")
antwort = requests.get(f"{BASE_URL}/unternehmen")
print(antwort.json())