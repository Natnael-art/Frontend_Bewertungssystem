from pydantic import BaseModel, ConfigDict
from datetime import datetime
from typing import Optional

class BewertungCreate(BaseModel):
    unternehmen_id: int
    kriterium_id: int
    punkte: float
    kommentar: Optional[str] = None
    benutzer: Optional[str] = "System"

class Bewertung(BewertungCreate):
    id: int
    bewertet_am: datetime
    model_config = ConfigDict(from_attributes=True)

class BewertungDetail(Bewertung):
    kriterium_name: str
    kriterium_kategorie: str
    kriterium_wertigkeit: str
    kriterium_faktor: float
