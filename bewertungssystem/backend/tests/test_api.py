from fastapi.testclient import TestClient
from main import app

client = TestClient(app)


def test_get_unternehmen_list():
    response = client.get("/unternehmen")
    assert response.status_code == 200
    assert isinstance(response.json(), list)


def test_get_kriterien():
    response = client.get("/kriterien")
    assert response.status_code == 200
    assert isinstance(response.json(), list)
    assert len(response.json()) > 0


def test_health():
    response = client.get("/health")
    assert response.status_code == 200
    assert "status" in response.json()
