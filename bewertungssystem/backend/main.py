from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from contextlib import asynccontextmanager

from database import init_database

# Router-Imports
from routers.unternehmen_router import router as unternehmen_router
from routers.kriterium_router import router as kriterium_router
from routers.bewertung_router import router as bewertung_router
from routers.punkte_router import router as punkte_router
from routers.auth_router import router as auth_router


@asynccontextmanager
async def lifespan(app: FastAPI):
    init_database()
    print("Backend gestartet")
    yield


app = FastAPI(
    title="HR Software Bewertungssystem API",
    version="1.0.0",
    lifespan=lifespan
)

# CORS für Flutter
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
    allow_credentials=True,
)

# Router registrieren
app.include_router(unternehmen_router)
app.include_router(kriterium_router)
app.include_router(bewertung_router)
app.include_router(punkte_router)
app.include_router(auth_router)


@app.get("/")
def root():
    return {
        "message": "HR Software Bewertungssystem API läuft",
        "version": "1.0.0"
    }


if __name__ == "__main__":
    import uvicorn
    uvicorn.run("main:app", host="0.0.0.0", port=8000, reload=True)
