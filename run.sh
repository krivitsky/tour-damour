#!/bin/bash
cd "$(dirname "$0")"
lsof -ti:8080 | xargs kill -9 2>/dev/null
echo "Starting Tour D'Amour server at http://localhost:8080"
python3 -m http.server 8080
