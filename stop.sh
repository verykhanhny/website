#!/bin/bash

docker stop backend
docker rm backend

docker stop frontend
docker rm frontend
