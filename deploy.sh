#!/bin/bash

gcloud run deploy website --region us-central1 --image us-central1-docker.pkg.dev/website-409804/container/backend:latest

gcloud run deploy frontend --region us-central1 --image us-central1-docker.pkg.dev/website-409804/container/frontend:latest --port 4200
