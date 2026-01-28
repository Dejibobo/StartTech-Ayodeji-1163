#!/bin/bash
set -e

# Navigate to frontend folder
cd "$(dirname "$0")/../frontend"

echo "Building frontend Docker image..."
docker build -t starttech-frontend .

echo "Stopping any running frontend containers..."
docker stop $(docker ps -q --filter ancestor=starttech-frontend) 2>/dev/null || true
docker rm $(docker ps -a -q --filter ancestor=starttech-frontend) 2>/dev/null || true

echo "Running frontend container on port 8080..."
docker run -d -p 8080:80 starttech-frontend

echo "Frontend deployed and running at http://localhost:8080"

