from pydantic import BaseModel, ConfigDict
from typing import Optional

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
