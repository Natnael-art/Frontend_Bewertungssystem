import requests
import sys

BASE_URL = "http://localhost:8000"

def test_health():
    """Testet den Health-Check Endpoint"""
    antwort = requests.get(f"{BASE_URL}/health")
    print("Health:", antwort.status_code, antwort.json())

def test_kriterien():
    """Teste alle Kriterien"""
    antwort = requests.get(f"{BASE_URL}/kriterien")
    print("Kriterien:", antwort.status_code, len(antwort.json()))
    
    
def test_ko_kriterien():
    """Test nur K.O. Kriterien"""
    antwort = requests.get(f"{BASE_URL}/kriterien/K.O.")
    print("K.O-Kriterien:", antwort.status_code, len(antwort.json()))

def test_unternehmen():
    """Test alle Unternehmen"""
    antwort = requests.get(f"{BASE_URL}/unternehmen")
    print("Unternehmen:", antwort.status_code, len(antwort.json()))

def test_punkte():
    """Test nur K.O. Kriterien"""
    antwort = requests.get(f"{BASE_URL}/kriterien")
    print("Kriterien:", antwort.status_code, len(antwort.json()))

def test_vergleiche():
    """Test nur K.O. Kriterien"""
    antwort = requests.get(f"{BASE_URL}/kriterien")
    print("Kriterien:", antwort.status_code, len(antwort.json()))

# Kartierung für einfache auswahl
TESTS = {
    "health": test_health,
    "kriterien": test_kriterien,
    "ko": test_ko_kriterien,
    "unternehmen": test_unternehmen,
    "punkte": test_punkte,
    "vergleiche": test_vergleiche,
}

if __name__ == "__main__":
    print("Teste BEWERTUNGSSYSTEM API..\n")
    
    if len(sys.argv) > 1:
        # Auswahl über Kommandozeilenargument
        auswahl = sys.argv[1]
        if auswahl in TESTS:
            TESTS[auswahl]()
        else:
            print(f"Unbekannte Test '{auswahl}'. Verfügbare Optionen: { ', '.join(TESTS.keys())}")
    else:
        # Standart: alle Tests laufen lassen 
        for name, func in TESTS.items():
            print(f"\n Start Test: {name}")
            func()
    print("\n Test abgeschlossen!")