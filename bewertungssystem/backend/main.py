from fastapi import FastAPI, HTTPException, Depends
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel, ConfigDict
from typing import List, Optional
import sqlite3
from datetime import datetime 
from contextlib import asynccontextmanager

# Import database.py initialization 
from database import init_database

# import Punktwertung.py Score-Berechnung & K.O.-Regeln
from Punktwertung import Bewertungssystem

#  lifespan 
@asynccontextmanager
async def lifespan(app: FastAPI):
    init_database()
    print("Bewertungssystem API gestartet")
    yield
    # optional cleanup bei shutdown

nati = FastAPI(
    title="HR Software Bewertungssystem API",
    description="API zur Bewertung von HR-Software nach alle Kriterien",
    version="1.0.0",
    lifespan=lifespan
)


# Cors für Flutter Frontend
nati.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Pydantic models für Daten-Validierung
class UnternehmenBase(BaseModel):
    name: str
    branche: Optional[str] = "HR-Software"
    mitarbeiter_range: Optional[str] = None
    website: Optional[str] = None

class UnternehmenCreate(UnternehmenBase):
    pass
class Unternehmen(UnternehmenBase):
    id: int
    erstellt_am: datetime
    model_config = ConfigDict(from_attributes=True)

class KriteriumBase(BaseModel):
    name: str
    kategorie: str
    beschreibung: Optional[str] = None
    wertigkeit: str
    faktor: float

class Kriterium(KriteriumBase):
    id: int
    max_punkte: int = 10
    aktiv: bool = True
    model_config = ConfigDict(from_attributes=True)

class BewertungCreate(BaseModel):
    unternehmen_id: int
    kriterium_id: int
    punkte: float
    kommentar: Optional[str] = None
    benutzer: Optional[str] = "System"

class Bewertung(BewertungCreate):
    id: int
    bewertet_am: datetime
    model_config = ConfigDict(from_attributes=True) # pyright: ignore[reportInvalidTypeForm]

class BewertungDetail(Bewertung):
    kriterium_name: str
    kriterium_kategorie: str
    kriterium_wertigkeit: str
    kriterium_faktor: float

class Punktestandantwort(BaseModel):
    unternehmen_id: int
    unternehmen_name: str
    gesamt_punktzahlen: float
    punkte_nach_kategorie: dict
    punkte_nach_wertigkeit: dict

class UserBase(BaseModel):
    email: str
    role: str = "user"

class UserCreate(BaseModel):
    email: str
    password: str
    role: str = "user"

class User(UserBase):
    id: int
    model_config = ConfigDict(from_attributes=True)

class LoginRequest(BaseModel):
    email: str
    password: str

# Database Verbindungshelfer 
def get_db():
    verbinde = sqlite3.connect("bewertungssystem.db")
    verbinde.row_factory = sqlite3.Row # Für spalten name 
    try:
        yield verbinde
    finally:
        verbinde.close()

# Endpoints 
# Health check 
@nati.get("/")
def read_root():
    return {
        "message": "HR Software Bewertungssystem API",
        "version": "1.0.0",
        "endpoints":{
            "unternehmen": "/unternehmen",
            "kriterien": "/kriterien",
            "bewertungen": "/bewertungen",
            "punkte": "/punkte"
        }
    }

@nati.get("/health")
def health_check():
    return{"status": "health", "timestamp": datetime.now()}

@nati.post("/auth/login", response_model=User)
def login(request: LoginRequest, db: sqlite3.Connection = Depends(get_db)):
    cursor = db.cursor()
    cursor.execute("SELECT id, email, role FROM users WHERE email = ? AND password = ?", (request.email, request.password))
    user_row = cursor.fetchone()
    if not user_row:
        raise HTTPException(status_code=401, detail="Invalid credentials")
    return dict(user_row)

# unternehmen Endpoints
@nati.get("/unternehmen", response_model=List[Unternehmen])
def get_unternehmen(db: sqlite3.Connection = Depends(get_db)):
    stift_schreiber = db.cursor()
    stift_schreiber.execute("SELECT * FROM unternehmen ORDER BY name")
    unternehmen_reihen = stift_schreiber.fetchall()
    return [dict(reihe) for reihe in unternehmen_reihen]

@nati.get("/unternehmen/{unternehmen_id}", response_model=Unternehmen)
def get_unternehmen_by_id(unternehmen_id: int, db: sqlite3.Connection = Depends(get_db)):
    stif_schreiber = db.cursor()
    stif_schreiber.execute("SELECT * FROM unternehmen WHERE id = ?", (unternehmen_id,))
    unternehmen_reihe = stif_schreiber.fetchone()
    if not unternehmen_reihe:
        raise HTTPException(status_code=404, detail="Unternehmen nicht gefunden")
    return dict(unternehmen_reihe)

@nati.post("/unternehmen", response_model=Unternehmen)
def create_unternehmen(unternehmen: UnternehmenCreate, db: sqlite3.Connection = Depends(get_db)):
    stift_schreiber = db.cursor()
    try:
        stift_schreiber.execute(
            "INSERT INTO unternehmen (name, branche, mitarbeiter_range, website) VALUES (?,?,?,?)",
            (unternehmen.name, unternehmen.branche, unternehmen.mitarbeiter_range, unternehmen.website)
        )
        db.commit()
        # Neue Firma zurückgeben
        stift_schreiber.execute("SELECT * FROM unternehmen WHERE id = ?", (stift_schreiber.lastrowid,))
        new_unternehmen_reihe = stift_schreiber.fetchone()
        return dict(new_unternehmen_reihe)
    except sqlite3.IntegrityError:
        raise HTTPException(status_code=409, detail="Unternehmen mit diesem Namen existiert bereits")

# Kriterien Endpoint
@nati.get("/kriterien", response_model=List[Kriterium])
def get_kriterien(db: sqlite3.Connection = Depends(get_db)):
    stift_schreiber = db.cursor()
    stift_schreiber.execute("SELECT * FROM kriterien WHERE aktiv = TRUE ORDER BY id")
    kriterien_reihen = stift_schreiber.fetchall()
    return [dict(reihe) for reihe in kriterien_reihen]

@nati.get("/kriterien/{wertigkeit}", response_model=List[Kriterium])
def get_kriterien_by_wertigkeit(wertigkeit: str, db: sqlite3.Connection = Depends(get_db)):
    stift_schreiber = db.cursor()
    stift_schreiber.execute("SELECT * FROM kriterien WHERE wertigkeit = ? AND aktiv = TRUE ORDER BY id", (wertigkeit,))
    kriterien_reihen = stift_schreiber.fetchall()
    if not kriterien_reihen:
        raise HTTPException(status_code=404, detail=f"Keine Kriterien mit Wertigkeit '{wertigkeit}' gefunden")
    return[dict(reihe) for reihe in kriterien_reihen]

# Bewertung Endpoint 
@nati.get("/bewertungen/unternehmen/{unternehmen_id}", response_model=List[BewertungDetail])
def get_bewertungen_by_unternehmen(unternehmen_id: int, db: sqlite3.Connection = Depends(get_db)):
    stift_schreiber = db.cursor()
    stift_schreiber.execute("""
        SELECT b.*, k.name  as kriterium_name, k.kategorie as kriterium_kategorie,
        k.wertigkeit as kriterium_wertigkeit, k.faktor as kriterium_faktor
        from bewertung as b 
        JOIN kriterien k on b.kriterium_id = k.id
        WHERE b.unternehmen_id = ?
        ORDER BY k.id
    """,(unternehmen_id,))
    bewertung_reihen = stift_schreiber.fetchall()
    return [dict(reihe) for reihe in bewertung_reihen]

@nati.post("/bewertungen", response_model=Bewertung)
def create_bewertung(bewertung: BewertungCreate, db: sqlite3.Connection = Depends(get_db)):
    stift_schreiber = db.cursor()
    # Prüfen ob das Unternehmen existieret
    stift_schreiber.execute("SELECT id FROM unternehmen WHERE id = ?", (bewertung.unternehmen_id,))
    if not stift_schreiber.fetchone():
        raise HTTPException(status_code=404, detail="Unternehmen nicht gefunden")
    # Prüfen ob Kriterium existiert 
    stift_schreiber.execute("SELECT id, max_punkte FROM kriterien WHERE id = ? AND aktiv = TRUE", (bewertung.kriterium_id,))
    kriterium = stift_schreiber.fetchone()
    if not kriterium:
        raise HTTPException(status_code=404, detail="Kriterium nicht gefunden")
    max_punkte = kriterium["max_punkte"]
    if not (0 <= bewertung.punkte <= max_punkte):
        raise HTTPException(status_code=400, detail=f"Punkte müssen zwischen 0 und {max_punkte} liegen")
    
    try:
        # Insert oder Update falls schon existiert 
        stift_schreiber.execute("""
            INSERT OR REPLACE INTO bewertung
            (unternehmen_id, kriterium_id, punkte, kommentar, benutzer)
            VALUES (?,?,?,?,?)
        """,(
            bewertung.unternehmen_id,
            bewertung.kriterium_id,
            bewertung.punkte,
            bewertung.kommentar,
            bewertung.benutzer
        ))
        db.commit()
        
        # Bewertung zurückgeben 
        stift_schreiber.execute("""
            SELECT b.* FROM bewertung b 
            WHERE b.unternehmen_id = ? AND b.kriterium_id = ?
        """, (bewertung.unternehmen_id, bewertung.kriterium_id))

        new_bewertung_reihe = stift_schreiber.fetchone()
        return dict(new_bewertung_reihe)
    except sqlite3.IntegrityError as e:
        raise HTTPException(status_code=409, detail="Bewertung konnte nicht gespeichert werden")
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Fehler beim Speichern: {str(e)}")

# Punkte Endpoint
@nati.get("/punkte/unternehmen/{unternehmen_id}", response_model=Punktestandantwort)
def get_unternehmen_punkte(unternehmen_id: int, db: sqlite3.Connection = Depends(get_db)):
    """Berechne gesamte Punkte für Unternehmen und gibt es Punktesstandantwort-Schama zurück"""
   
    # Prüfen ob Unternehmen existiert
    stift_schreiber = db.cursor()
    stift_schreiber.execute("SELECT id, name FROM unternehmen WHERE id = ?", (unternehmen_id,))
    unternehmen = stift_schreiber.fetchone()
    if not unternehmen:
        raise HTTPException(status_code=404, detail="Unternehmen nicht gefunden")
    
    bewertungs_system = Bewertungssystem(db)
    ergebnis = bewertungs_system.Unternehmens_bewertung_berechnen(unternehmen_id)
    
    # Zuordnung der Engine-Antwort ins Punktestandantwort-Schema
    return Punktestandantwort(
        unternehmen_id=unternehmen_id,
        unternehmen_name=unternehmen["name"],
        gesamt_punktzahlen=round(ergebnis["gesamt_punkte"], 2),
        punkte_nach_kategorie={k: round(v, 2) for k, v in ergebnis.get()},
        punkte_nach_wertigkeit={k: round(v, 2) for k, v in ergebnis.get()}
    )
    
@nati.post("/punkte/vergleichen")
def unternehmen_vergleichen(untermehmen_ids: List[int], db: sqlite3.Connection = Depends(get_db)):
    """Vergleicht mehrere Unternehmen miteinander"""
    if len(untermehmen_ids) < 2:
        raise HTTPException(status_code=400, detail="Mindestens 2 Unternehmen für vergleich benötigt")
    if len(untermehmen_ids) > 5:
        raise HTTPException(status_code=400, detail="Maximal 5 unternehmen können verglichen werden")
    
    stift_schreiber = db.cursor()
    platzhalter = ','.join('?' * len(untermehmen_ids))
    stift_schreiber.execute(f"SELECT id FROM unternehmen WHERE id IN ({platzhalter})", untermehmen_ids)
    vorhandene_ids = [reihe['id'] for reihe in stift_schreiber.fetchall()]
    if len(vorhandene_ids) != len(untermehmen_ids):
        fehlende_ids = set(untermehmen_ids) - set(untermehmen_ids)
        raise HTTPException(status_code=404, detail=f"Unternehmen nicht gefunden: {fehlende_ids}")
    
    bewertungs_system = Bewertungssystem(db)
    vergleich = bewertungs_system.Unternehmens_bewertung_berechnen(untermehmen_ids)
    return{
        "vergleich": vergleich,
        "bester_punkte": vergleich[0]["gesamt_punkte"] if vergleich else 0,
        "anzhal_unternehmen": len(vergleich)
    }
    
@nati.get("/punkte/rangliste")
def rangliste_abrufen(db: sqlite3.Connection = Depends(get_db)):
    """Zeige Rangliste aller Unternehmen nach Punkte"""
    stift_schreiber = db.cursor()
    stift_schreiber.execute("SELECT id FROM unternehmen")
    ids = [reihe['id'] for reihe in stift_schreiber.fetchall()]
    if not ids:
        return{"rangliste": [], "nachricht": "Keine Unternehmen vorhanden"}
    
    bewertungs_system = Bewertungssystem(db)
    rangliste = bewertungs_system.Unternehmens_bewertung_berechnen(ids)
    
    for index, Unternehmen in enumerate(rangliste, 1):
        Unternehmen["rang"] = index
         
    return {
        "rangliste": rangliste,
        "anzahl_unternehmen": len(rangliste),
        "durchschnitts_punkte": round(
            sum(u["gesamt_punkte"] for u in rangliste) / len (rangliste), 2
        ) if rangliste else 0
    }
    
@nati.get("/punkte/dashboard/{unternehmen_id}")
def get_dashboard(unternehmen_id: int, db: sqlite3.Connection = Depends(get_db)):
    """Kombibiert Übersicht für ein Unternehmen"""
    bewertungs_system = Bewertungssystem(db)
    punkte = bewertungs_system.Unternehmens_bewertung_berechnen(unternehmen_id)
    
    # Rangliste aller Unternehmen 
    stif_schreiber = db.cursor()
    stif_schreiber.execute("SELECT id FROM unternehmen")
    ids = [reihe["id"] for reihe in stif_schreiber.fetchall]
    rangliste = bewertungs_system.Unternehmens_bewertung_berechnen(ids)
    
    # Position des Unternehmens in Rangliste
    position = next((i+1 for i,u in enumerate(rangliste) if u["unternehmen_id"] == unternehmen_id), None)
    
    return {
        "punkte": punkte,
        "rangliste_position": position,
        "gesamt_rangliste": rangliste
    }
    
# Start mit uvicorn 
if __name__ == "__main__":
    import uvicorn
    uvicorn.run("main:nati", host="0.0.0.0", port=8000, reload=True)
    