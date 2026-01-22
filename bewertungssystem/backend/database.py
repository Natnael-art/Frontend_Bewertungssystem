import sqlite3
from datetime import datetime

# Tabellen Definitionen 
Tabellen = {
    "unternehmen":"""
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
    "bewertungen": """
        CREATE TABLE IF NOT EXISTS bewertungen (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            unternehmen_id INTEGER NOT NULL,
            kriterium_id INTEGER NOT NULL,
            punkte REAL NOT NULL CHECK (punkte >= 0 AND punkte <=10),
            kommentar TEXT,
            bewertet_am DATETIME DEFAULT CURRENT_TIMESTAMP,
            benutzer TEXT DEFAULT 'System',
            FOREIGN KEY (unternehmen_id) REFERENCES unternehmen(id),
            FOREIGN KEY (kriterium_id) REFERENCES kriterien(id),
            UNIQUE(unternehmen_id, kriterium_id)
        );
    """,
    "users": """
        CREATE TABLE IF NOT EXISTS users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            email TEXT UNIQUE NOT NULL,
            password TEXT NOT NULL,
            role TEXT DEFAULT 'user'
        );
    """
}

# Kiterien Daten
KRITERIEN_DATEN = [
    ('Stammdaten', 'Stammdaten & Verwaltung',
     'Persönliche Daten, Vertragsdaten, Dokumenten-Managment, Organisations-Struktur', 'K.O', 2.0),
    ('Zeiterfassung', 'Zeiterfassung',
     'Arbeitszeiten erfassen, Pause, Überstunden, Projekt-Zuordnung, Mobile Erfassung', 'K.O', 2.0),
    ('Abwesenheit', 'Abwesenheit-Mgmt',
     'Krankmeldung, Attest-Verwaltung, Sonderurlaub, eAu Integration', 'K.O', 2.0),
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
    ('Arbeitsmittel', 'Arbeitsmittelverwaltung',
     'Hardware, Software-Lizenzen, Zugangskarten, Ausgabe & Rückgabe', 'wichtig', 1.5),
    ('Recruiting', 'Personal-Recruiting',
     'Stellenausschreibungen, Bewerber-Pool, Bewerbungsprozess, Job-Portale', 'wichtig', 1.5),
    ('EUnterschrift', 'Arbeitsmittelverwaltung',
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
    ('Payroll', 'Eigene SW-Lösung "Payroll"',
     'Komplette Lohnabrechnung, Steuerberechnungen, SV-Beiträge, Lohnsteuer-Anmeldungen', 'extra', 0.8),
    ('Workflow', 'Workflow-Optimierungen',
     'Custom Workflows, Automatische Benachrichtigungen, Approval-Prozesse', 'extra', 0.8),
    ('Strategie', 'Strateg. Personal-Planungen',
     'Personalbedarfs-Planung, Nachfolge-Planung, Talent-Pipeline', 'ohne Wertung', 0.0),
    ('Verguetung', 'Vergütungs-Mgmt',
     'Gehaltsbänder, Gehaltsentwicklungen, Markt-Vergleiche, Bonus-Systeme', 'ohne Wertung', 0.0),
    ('Kultur', 'Unternehmens-Kultur',
     'Feedback-Kultur, Mitarbeiter-Umfrage, Recognition, Social Intranet', 'ohne Wertung', 0.0)
]

# Datenbank 
def init_database():
    with sqlite3.connect('bewertungssystem.db') as verbinden:
        stiftScheiber = verbinden.cursor()

        #Tabellen erstellen
        for sql in Tabellen.values():
            stiftScheiber.execute(sql)
        # Prüfen, ob kriterien bereis vorhanden sind
        stiftScheiber.execute("SELECT COUNT(*) FROM kriterien")
        if stiftScheiber.fetchone()[0] == 0:
            stiftScheiber.executemany(""" INSERT INTO kriterien ( kategorie, name, beschreibung, wertigkeit,faktor) VALUES (?,?,?,?,?)""", KRITERIEN_DATEN)
            print("22 Kriterien erforgreich eingefügt")
        
        print("Datenbank erfolgreich initialisiert")

# Debung Test 
if __name__ == "__main__":
    init_database()