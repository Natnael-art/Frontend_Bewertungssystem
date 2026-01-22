import urllib.request
import json

print("Testing login")
data = json.dumps({"email": "natilidiya67@gmail.com", "password": "1234"}).encode()
req = urllib.request.Request("http://localhost:8000/auth/login", data=data, headers={"Content-Type": "application/json"})
try:
    r = urllib.request.urlopen(req)
    print(r.status, r.read().decode())
except Exception as e:
    print(e)