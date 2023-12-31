#!/bin/bash

docker run -d -p 8080:8080 --name backend us-central1-docker.pkg.dev/website-409804/container/backend:latest

docker run -d -p 80:80 --name frontend us-central1-docker.pkg.dev/website-409804/container/frontend:latest
