#!/bin/bash

cd backend
docker build . --tag us-central1-docker.pkg.dev/website-409804/container/backend:latest

cd ..

cd frontend
docker build . --tag us-central1-docker.pkg.dev/website-409804/container/frontend:latest
