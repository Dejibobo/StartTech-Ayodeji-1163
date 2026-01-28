#!/bin/bash
set -e

echo "Stopping frontend container..."
docker stop $(docker ps -q --filter ancestor=starttech-frontend) 2>/dev/null || true
docker rm $(docker ps -a -q --filter ancestor=starttech-frontend) 2>/dev/null || true

echo "Stopping backend container..."
docker stop $(docker ps -q --filter ancestor=starttech-backend) 2>/dev/null || true
docker rm $(docker ps -a -q --filter ancestor=starttech-backend) 2>/dev/null || true

echo "Rollback completed. All containers stopped and removed."

