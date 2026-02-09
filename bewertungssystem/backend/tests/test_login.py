def test_register_and_login(client):
    client.post("/auth/register", json={
        "email": "test@test.de",
        "password": "1234",
        "role": "user"
    })

    response = client.post("/auth/login", json={
        "email": "test@test.de",
        "password": "1234"
    })

    assert response.status_code == 200
