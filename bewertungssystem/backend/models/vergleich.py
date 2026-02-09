from pydantic import BaseModel
from typing import List, Dict, Optional


class VergleichEintrag(BaseModel):
    unternehmen_id: int
    name: str
    branche: Optional[str] = None
    gesamt_punkte: float
    bestanden: bool
    kategorie_punkte: Dict[str, float]
    staerken: List[str]
    schwaechen: List[str]
