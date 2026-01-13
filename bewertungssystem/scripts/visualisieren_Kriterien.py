import requests
import matplotlib.pyplot as plt 

BASE_URL = "http://127.0.0.1:8000"

unternehmen_id = input("Bitte Unternehmen_ID eingeben: ")

r = requests.get(f"{BASE_URL}/punkte/unternehmen/{unternehmen_id}")
if r.status_code != 200:
    print(" Feheler beim Abrufen:", r.status_code, r.text)
    exit()
    
daten = r.json()
bewertungen = daten.get("bewertungen", [])
kriterien = [b["kriterium_name"] for b in bewertungen]
punkte = [b["punkte"] for b in bewertungen]

plt.figure(figsize=(9, 6))
bars = plt.bar(kriterien, punkte, color="#2196F3")

plt.title(f"Kriterien-Punkte für Unternehmen {unternehmen_id}", fontsize=16)
plt.xlabel("Kriterien")
plt.ylabel("Punkte (0-10)")

for bar in bars:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 0.2, str(yval)),

plt.tight_layout()
plt.show()

