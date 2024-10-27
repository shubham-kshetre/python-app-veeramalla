#!/bin/bash
set -e

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 557690596766.dkr.ecr.us-east-1.amazonaws.com

# Pull the Docker image from Docker Hub
echo "Pull the Docker image from Docker Hub"
docker pull 557690596766.dkr.ecr.us-east-1.amazonaws.com/python-app

# Run the Docker image as a container
docker run -d -p 5000:5000 557690596766.dkr.ecr.us-east-1.amazonaws.com/python-app
