#!/bin/bash

gcloud auth configure-docker us-central1-docker.pkg.dev
docker push us-central1-docker.pkg.dev/website-409804/container/website:latest
