#!/bin/bash

gcloud run deploy website --region us-central1 --image us-central1-docker.pkg.dev/website-409804/container/website:latest
