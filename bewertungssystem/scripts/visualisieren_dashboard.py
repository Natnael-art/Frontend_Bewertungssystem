import requests
import matplotlib.pyplot as plt 
import numpy as np

BASE_URL = "http://127.0.0.1:8000"

ids_eingabe = input("BItte Unternehmns_IDs eingabe (z.B. 1,2,3): ")
unternehmen_ids = [int(x.strip()) for x in ids_eingabe.split(",")]

unternehmen_punkte = []
unternehmen_details = {}
for uid in unternehmen_ids:
    r = requests.get(f"{BASE_URL}/punkte/unternehmen/{uid}")
    if r.status_code == 200:
        daten = r.json()
        name = daten.get("name", f"Unternehmen {uid}")
        unternehmen_punkte.append({"unternehmen": name, "punkte": daten["gesamt_punkte"]})
        unternehmen_details[name] = {b["kriterium_name"]: b["punkte"] for b in daten.get("bewertungen", [])}
    else:
        print(f"Fehler bei Unternehmen {uid}:", r.status_code, r.text)

if not unternehmen_punkte:
    print("Keine Daten gefunden")
    exit()
    
fig, axs = plt.subplot(2, 2, figsize=(14, 10))

#Rangliste
ergebnisse_sortiert = sorted(unternehmen_punkte, key=lambda x: x["punkte"], reverse=True)
unternehmen = [s["punkte"] for s in ergebnisse_sortiert]
werte = [s["punkte"] for s in ergebnisse_sortiert]
axs[0,0].barh(unternehmen, werte, color="4CAF50")
axs[0,0].set_title("rangliste der Unternehmen")
axs[0,0].set_xlabel("Punkte")

# Vergleich Gesamt Punkte 
unternehmen = [s["unternehmen"] for s in unternehmen_punkte]
werte = [s["punkte"] for s in unternehmen_punkte]
axs[0,1].bar(unternehmen, werte, color="#2196F3")
axs[0,1].set_title("Vergleich der Gesamt Punkte")
axs[0,1].set_ylabel("Punkte")

# Kriterien eines Unternehmens
erste_name = unternehmen[0]
kriterien = list(unternehmen_details[erste_name].keys())
punkte = list(unternehmen_details[erste_name].values())
axs[1,0].bar(kriterien, punkte, color="#FF9800")
axs[1,0].set_tile(f"Kriterien Punkte: {erste_name}")
axs[1,0].set_ylabel("Punkte")
axs[1,0].tick_params(axis='x', rotation=30)

# Kriterienvergleich 
alle_kriterien = sorted({k for punkte in unternehmen_details.values() for k in punkte.keys()})
x = np.arange(len(alle_kriterien))
width = 0.25
for i, (name, punkte) in enumerate(unternehmen_details.items()):
    werts = [punkte.get(k, 0) for k in alle_kriterien]
    axs[1,1].bar(x + i*width, werte, width, label=name)
axs[1,1].set_xticks(x + width*(len(unternehmen_details)-1)/2)
axs[1,1].set_xticklabels(alle_kriterien, rotation=30)
axs[1,1].set_title("Kriterienvergleich")
axs[1,1].legend()

plt.tight_layout()
plt.show()