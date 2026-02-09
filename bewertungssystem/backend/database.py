import sqlite3
import logging
from pathlib import Path

# Logging einrichten
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Konstanten
DB_NAME = 'bewertungssystem.db'
DEFAULT_BRANCHE = 'HR-Software'
MAX_PUNKTE = 10

# Tabellen-Definitionen (SINGULAR verwenden!)
TABLES = {
    "unternehmen": """
        CREATE TABLE IF NOT EXISTS unternehmen (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT UNIQUE NOT NULL,
            branche TEXT DEFAULT 'HR-Software',
            mitarbeiter_range TEXT,
            website TEXT,
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP
        );
    """,
    
    "kriterien": """
        CREATE TABLE IF NOT EXISTS kriterien (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            kategorie TEXT NOT NULL,
            name TEXT NOT NULL,
            beschreibung TEXT,
            wertigkeit TEXT NOT NULL,
            faktor REAL NOT NULL,
            max_punkte INTEGER DEFAULT 10,
            aktiv BOOLEAN DEFAULT TRUE
        );
    """,
    
    "bewertung": """
        CREATE TABLE IF NOT EXISTS bewertung (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            unternehmen_id INTEGER NOT NULL,
            kriterium_id INTEGER NOT NULL,
            punkte REAL NOT NULL CHECK (punkte >= 0 AND punkte <= 10),
            kommentar TEXT,
            bewertet_am DATETIME DEFAULT CURRENT_TIMESTAMP,
            benutzer TEXT DEFAULT 'System',
            FOREIGN KEY (unternehmen_id) REFERENCES unternehmen(id) ON DELETE CASCADE,
            FOREIGN KEY (kriterium_id) REFERENCES kriterien(id) ON DELETE CASCADE,
            UNIQUE(unternehmen_id, kriterium_id)
        );
    """,
    
    "users": """
        CREATE TABLE IF NOT EXISTS users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            email TEXT UNIQUE NOT NULL,
            password TEXT NOT NULL,
            role TEXT DEFAULT 'user',
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP
        );
    """
}

# Kriterien-Daten (korrigiert!)
KRITERIEN_DATEN = [
    # K.O. Kriterien (Faktor 2.0)
    ('Stammdaten', 'Stammdaten & Verwaltung',
     'Persönliche Daten, Vertragsdaten, Dokumenten-Management, Organisations-Struktur', 'K.O', 2.0),
    
    ('Zeiterfassung', 'Zeiterfassung',
     'Arbeitszeiten erfassen, Pause, Überstunden, Projekt-Zuordnung, Mobile Erfassung', 'K.O', 2.0),
    
    ('Abwesenheit', 'Abwesenheit-Mgmt',
     'Krankmeldung, Attest-Verwaltung, Sonderurlaub, eAU Integration', 'K.O', 2.0),
    
    ('Urlaub', 'Urlaub',
     'Urlaubsanträge, Genehmigungs-Workflow, Urlaubs-Kontingente, Team-Übersicht', 'K.O', 2.0),
    
    ('Projektkosten', 'Projekt & Stellenkostenbuchung',
     'Projekt-Stammdaten, Zeiten buchen, Kostenstellen, Budget-Überwachung', 'K.O', 2.0),
    
    ('Entgelt', 'Entgeltberechnung',
     'Gehaltsbestandteile, Sonderzahlungen, steuerliche Komponenten, SV-Daten', 'K.O', 2.0),
    
    ('Schnittstellen', 'Schnittstellen-LoBU Anbieter',
     'DATEV Schnittstelle, bidirektionaler Datenaustausch, andere LoBu-Anbieter', 'K.O', 2.0),
    
    ('Reisekosten', 'Reisekosten',
     'Reiseanträge, Spesen, Kilometer-Pauschalen, Beleg-Erfassung, DATEV Integration', 'K.O', 2.0),
    
    # Wichtige Kriterien (Faktor 1.5)
    ('Arbeitsmittel', 'Arbeitsmittelverwaltung',
     'Hardware, Software-Lizenzen, Zugangskarten, Ausgabe & Rückgabe', 'wichtig', 1.5),
    
    ('Recruiting', 'Personal-Recruiting',
     'Stellenausschreibungen, Bewerber-Pool, Bewerbungsprozess, Job-Portale', 'wichtig', 1.5),
    
    # Mindestanforderungen (Faktor 1.0)
    ('EUnterschrift', 'Elektronische Unterschrift',  # Name korrigiert!
     'Rechtssichere e-Signaturen, Vorlagen, Workflow, Archivierung', 'Mindestanforderung', 1.0),
    
    ('Marketing', 'Personal-Marketing',
     'Employer Branding, Karriere-Seiten, Social Media, Talent-Pool', 'Mindestanforderung', 1.0),
    
    ('Einstellung', 'Personal-Einstellung',
     'Onboarding-Checklisten, Automatische Tasks, Dokumenten-Vorlagen', 'Mindestanforderung', 1.0),
    
    ('Berichtwesen', 'Berichtwesen',
     'Standard-Reports, Custom Reports, Dashboard, Export-Funktionen', 'Mindestanforderung', 1.0),
    
    ('Offboarding', 'Personal-Offboarding',
     'Offboarding-Checklisten, Rückgabe-Prozess, Zugänge sperren', 'Mindestanforderung', 1.0),
    
    ('Qualifizierung', 'Personalqualifizierung',
     'Schulungskatalog, Teilnahme-Verwaltung, Zertifikate', 'Mindestanforderung', 1.0),
    
    ('Leistung', 'Leistungsbeurteilungen',
     'Zielvereinbarungen, Feedback-Zyklen, 360°-Feedback, Entwicklungs-Pläne', 'Mindestanforderung', 1.0),
    
    # Extra Features (Faktor 0.8)
    ('Payroll', 'Eigene SW-Lösung "Payroll"',
     'Komplette Lohnabrechnung, Steuerberechnungen, SV-Beiträge, Lohnsteuer-Anmeldungen', 'extra', 0.8),
    
    ('Workflow', 'Workflow-Optimierungen',
     'Custom Workflows, Automatische Benachrichtigungen, Approval-Prozesse', 'extra', 0.8),
    
    # Ohne Wertung (Faktor 0.0)
    ('Strategie', 'Strategische Personal-Planungen',
     'Personalbedarfs-Planung, Nachfolge-Planung, Talent-Pipeline', 'ohne Wertung', 0.0),
    
    ('Verguetung', 'Vergütungs-Management',
     'Gehaltsbänder, Gehaltsentwicklungen, Markt-Vergleiche, Bonus-Systeme', 'ohne Wertung', 0.0),
    
    ('Kultur', 'Unternehmens-Kultur',
     'Feedback-Kultur, Mitarbeiter-Umfrage, Recognition, Social Intranet', 'ohne Wertung', 0.0)
]


def init_database():
    """
    Initialisiert die Datenbank mit allen Tabellen und Standard-Kriterien
    """
    try:
        logger.info(f"Initialisiere Datenbank: {DB_NAME}")
        
        with sqlite3.connect(DB_NAME) as conn:
            # Foreign Keys aktivieren
            conn.execute("PRAGMA foreign_keys = ON")
            cursor = conn.cursor()
            
            # Tabellen erstellen
            logger.info("Erstelle Tabellen...")
            for table_name, sql in TABLES.items():
                cursor.execute(sql)
                logger.debug(f"  ✓ Tabelle '{table_name}' erstellt")
            
            # Kriterien einfügen (nur wenn leer)
            cursor.execute("SELECT COUNT(*) FROM kriterien")
            count = cursor.fetchone()[0]
            
            if count == 0:
                logger.info("Füge Kriterien ein...")
                cursor.executemany("""
                    INSERT INTO kriterien (kategorie, name, beschreibung, wertigkeit, faktor)
                    VALUES (?, ?, ?, ?, ?)
                """, KRITERIEN_DATEN)
                
                inserted = cursor.rowcount
                conn.commit()
                logger.info(f"✓ {inserted} Kriterien erfolgreich eingefügt")
            else:
                logger.info(f"Kriterien bereits vorhanden ({count} Einträge)")
            
            logger.info("✓ Datenbank erfolgreich initialisiert")
            
    except sqlite3.Error as e:
        logger.error(f"❌ Datenbankfehler: {e}")
        raise
    except Exception as e:
        logger.error(f"❌ Unerwarteter Fehler: {e}")
        raise


# Debugging-Test
if __name__ == "__main__":
    init_database()
    
    # Statistiken ausgeben
    with sqlite3.connect(DB_NAME) as conn:
        cursor = conn.cursor()
        
        print("\n📊 Datenbank-Statistiken:")
        print("=" * 40)
        
        for table in ["unternehmen", "kriterien", "bewertung", "users"]:
            cursor.execute(f"SELECT COUNT(*) FROM {table}")
            count = cursor.fetchone()[0]
            print(f"  {table:20s}: {count:5d} Einträge")
        
        print("=" * 40)

def get_db():
    """
    FastAPI Dependency:
    Öffnet eine neue DB-Verbindung pro Request und schließt sie danach wieder.
    """
    conn = sqlite3.connect(DB_NAME)
    conn.row_factory = sqlite3.Row
    try:
        yield conn
    finally:
        conn.close()
