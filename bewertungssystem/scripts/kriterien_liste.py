import requests
import json 
from tabulate import tabulate

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

