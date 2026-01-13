import requests

BASE_URL = "http://127.0.0.1:8000"

Kriterien = [
    {
        "name": "Usability",
        "beschreibung": "Benutzerfreundlichkeit der Software",
        "max_punkte": 10,
        "kategorie": "Funktionalität",
        "wertigkeit": "Hoch"
    },
    {
        "name": "Performance",
        "beschreibung": "Geschwindigkeit und Stabilität",
        "max_punkte": 10,
        "kategorie": "Technik",
        "wertigkeit": "Mittel"
    },
    {
        "name": "Support",
        "beschreibung": "Qualität des kundensupports",
        "max_punkte": 5,
        "kategorie": "Service",
        "wertigkeit": "Mittel"
    }
]

# Kriterien hinzufügen
for kriterium in Kriterien:
    antwort = requests.post(f"{BASE_URL}/kriterien", json=kriterium)
    if antwort.status_code == 200:
        print(" Kriterium hinzugefügt:", antwort.json())
    else:
        print("Fehler:", antwort.status_code, antwort.text)

# Alle Kriterien abrufen 
print("\n Aktuelle Kriterien:")
kriterien_antwort = requests.get(f"{BASE_URL}/kriterien")
if kriterien_antwort.status_code == 200:
    print(kriterien_antwort.json())
else:
    print("Fehler bei Abrufen:", kriterien_antwort.status_code, kriterien_antwort.text)