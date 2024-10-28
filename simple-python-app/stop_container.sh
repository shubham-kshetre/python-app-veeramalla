#!/bin/bash
set -e

# Stop the running container (if any)
echo "Stop the running container"
docker rm -f $(docker ps -q) &>/dev/null
