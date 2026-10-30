#!/usr/bin/env bash

docker run -i --rm --network minikube python:3-slim python3 - << 'EOF'
import json
import urllib.request
from collections import Counter

ADDRESS = "192.168.49.200"
PORT = 8080
TRIES = 100

counts = Counter()

def main():
    for i in range(1, TRIES + 1):
        req = urllib.request.Request(
            f"http://{ADDRESS}:{PORT}",
            headers={"Connection": "close"}  # Forces a fresh TCP connection per request
        )
        with urllib.request.urlopen(req) as resp:
            data = json.loads(resp.read().decode())
            pod_name = data.get("pod", data.get("hostname", str(data)))
            counts[pod_name] += 1

    for pod, count in counts.items():
        print(f"{pod}: {count}%")

if __name__ == "__main__":
    main()
EOF
