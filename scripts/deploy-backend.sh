#!/bin/bash
set -e

# Navigate to backend folder
cd "$(dirname "$0")/../backend"

echo "Building backend Docker image..."
docker build -t starttech-backend .

echo "Stopping any running backend containers..."
docker stop $(docker ps -q --filter ancestor=starttech-backend) 2>/dev/null || true
docker rm $(docker ps -a -q --filter ancestor=starttech-backend) 2>/dev/null || true

echo "Running backend container on port 3000..."
docker run -d -p 3000:3000 starttech-backend

echo "Backend deployed and running at http://localhost:3000"

