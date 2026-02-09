from pydantic import BaseModel, Field, ConfigDict
from datetime import datetime
from typing import Optional

class UnternehmenBase(BaseModel):
    name: str
    branche: Optional[str] = "HR-Software"
    mitarbeiter_range: Optional[str] = None
    website: Optional[str] = None

class UnternehmenCreate(UnternehmenBase):
    pass

class Unternehmen(UnternehmenBase):
    id: int
    erstellt_am: datetime = Field(alias="created_at")
    model_config = ConfigDict(
        from_attributes=True,
        populate_by_name=True
    )
