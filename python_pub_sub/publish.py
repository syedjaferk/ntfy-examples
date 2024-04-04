import requests

message = "Test Message".encode(encoding='utf-8')

requests.post("https://ntfy.sh/mytopic", message)