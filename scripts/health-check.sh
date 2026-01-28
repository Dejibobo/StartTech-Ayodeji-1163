#!/bin/bash
set -e

FRONTEND_URL=${1:-http://localhost:8080}
BACKEND_URL=${2:-http://localhost:3000}

echo "Checking frontend health at $FRONTEND_URL..."
curl -f "$FRONTEND_URL/health" || { echo "Frontend is down"; exit 1; }

echo "Checking backend health at $BACKEND_URL..."
curl -f "$BACKEND_URL/health" || { echo "Backend is down"; exit 1; }

echo "✅ Both frontend and backend are healthy."

