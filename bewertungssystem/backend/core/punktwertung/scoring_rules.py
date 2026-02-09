"""
scoring_rules.py
Zentrale Definition aller Bewertungs- und Gewichtungsregeln.
Diese Datei hält KEINE Logik, sondern nur Konstanten & Regeldefinitionen.
"""

# Gewichtungen nach Wertigkeit
WERTIGKEIT_FAKTOREN = {
    "K.O": 2.0,
    "wichtig": 1.5,
    "Mindestanforderung": 1.0,
    "extra": 0.8,
    "ohne Wertung": 0.0,
}

# Mindestanforderungen für K.O.-Kriterien
KO_MIN_PUNKTE = 5

# Maximalpunkte pro Kriterium (Standard)
DEFAULT_MAX_PUNKTE = 10

# Analyse-Schwellenwerte
SCHWELLE_STAERKE = 9
SCHWELLE_SCHWAECHEN = 4
