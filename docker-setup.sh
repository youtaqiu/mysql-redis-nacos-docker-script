#!/bin/bash
set -e

NID=$(docker network ls | grep "app" | awk '{print $1}')
if [ -n "$NID" ]; then
  echo "exist[app]network，NID=$NID"
else
  echo "Creating docker network..."
  docker network create app
  echo "Done create docker network..."
fi

echo "Running docker-compose up..."
docker-compose -f docker-compose.yml up -d
echo "Done docker-compose up..."

echo "Cleaning previous docker images..."
docker image prune -f
echo "Cleaned previous docker images..."
