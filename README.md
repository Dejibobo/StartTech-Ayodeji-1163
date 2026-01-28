StartTech Application – CI/CD Enabled Deployment
📌 Project Overview

This repository contains the StartTech application, which consists of a frontend and backend service.
The application is fully Dockerized and integrated with GitHub Actions CI/CD pipelines to automate build and validation processes.

Infrastructure provisioning is handled in a separate repository using Terraform, following best DevOps practices for separation of concerns.

🧱 Architecture Overview
User
 └── Frontend (React + Nginx, Docker)
      └── Backend (Node.js API, Docker)
           └── AWS Infrastructure (via separate Terraform repo)

📁 Repository Structure
StartTech-Ayodeji-1163/
├── .github/
│   └── workflows/
│       ├── frontend-ci-cd.yml
│       └── backend-ci-cd.yml
├── frontend/
│   ├── src/
│   ├── public/
│   ├── package.json
│   ├── Dockerfile
│   └── nginx.conf
├── backend/
│   ├── src/
│   ├── tests/
│   ├── package.json
│   ├── Dockerfile
│   └── ecosystem.config.js
├── scripts/
│   ├── deploy-frontend.sh
│   ├── deploy-backend.sh
│   ├── health-check.sh
│   └── rollback.sh
└── README.md

🚀 Application Components
Frontend

Built with React

Served via Nginx

Dockerized for consistency

Exposed on port 8080

Health endpoint: /health

Backend

Built with Node.js (Express)

Dockerized

Exposed on port 3000

Health endpoint: /health

🐳 Docker Usage
Build and Run Backend
cd backend
docker build -t starttech-backend .
docker run -d -p 3000:3000 starttech-backend


Test:

curl http://localhost:3000/health

Build and Run Frontend
cd frontend
docker build -t starttech-frontend .
docker run -d -p 8080:80 starttech-frontend


Test:

curl http://localhost:8080/health

🛠 Deployment Scripts

Scripts are located in the scripts/ directory.

Make scripts executable (one-time):

chmod +x scripts/*.sh

Deploy Backend
./scripts/deploy-backend.sh

Deploy Frontend
./scripts/deploy-frontend.sh

Health Check
./scripts/health-check.sh

Rollback (Stop & Remove Containers)
./scripts/rollback.sh

🔄 CI/CD with GitHub Actions
Workflows
Workflow	Purpose
frontend-ci-cd.yml	Builds and validates frontend
backend-ci-cd.yml	Builds, tests, and validates backend
Triggers

Runs automatically on push

Runs on pull_request

Builds Docker images as part of CI

🔐 Security & Secrets

No credentials are stored in the repository

AWS credentials (for deployment) are managed via:

IAM users

GitHub Actions secrets

Follows least-privilege IAM best practices

☁️ Infrastructure

Infrastructure provisioning is handled in a separate repository:

➡ StartTech Infrastructure Repository

Terraform

Modular architecture

AWS VPC, ALB, Auto Scaling, CloudWatch

Independent CI/CD pipeline

📋 Prerequisites

Docker

Node.js (for local development)

Git

GitHub account

✅ Status

 Frontend Dockerized

 Backend Dockerized

 CI/CD pipelines configured

 Health checks implemented

 Deployment scripts ready

 Documentation completed

👤 Author

Ayodeji
DevOps / Cloud Engineer
StartTech Technical Assessment
