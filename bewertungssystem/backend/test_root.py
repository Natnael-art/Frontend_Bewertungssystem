import urllib.request

try:
    r = urllib.request.urlopen('http://localhost:8000/')
    print(r.status, r.read().decode())
except Exception as e:
    print(e)