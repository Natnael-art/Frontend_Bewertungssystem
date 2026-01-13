import requests

BASE_URL = "http://127.0.0.1:8000"

bewertungen = [
    {
        "unternehmen_id": 1,
        "kriterium_id": 1,
        "punkte": 8,
        "kommentar": "Sehr benutzerfreundlich"
    },
    {
        "unternehmen_id": 1,
        "kriterium_id": 2,
        "punkte": 9,
        "kommentar": "Schnell und Stabil"
    },
    {
        "unternehmen_id": 1,
        "kriterium_id": 3,
        "punkte": 4,
        "kommentar": "Support könnte besser sein"
    }
]

for bewertung in bewertungen:
    antwort = requests.post(f"{BASE_URL}/bewertungen", json=bewertung)
    if antwort.status_code == 200:
        print("Bewertungen hinzgefügt:", antwort.json())
    else:
        print("Fehler:", antwort.status_code, antwort.text)
        
print("\n Punktzahl für Unternehmen 1:")
punkte_antwort = requests.get(f"{BASE_URL}/punkte/unternehmen/1")
if punkte_antwort.status_code == 200:
    print(punkte_antwort.json())
else:
    print("Fehler beim Abrufe des Punktzahl:", punkte_antwort.status_code, punkte_antwort.text)