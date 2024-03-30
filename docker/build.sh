#!/bin/bash
set -e

command -v docker-compose >/dev/null 2>&1 || {
    echo "The Docker Compose is not installed. Please install it before running this script."
    exit 1
}

if [ -n "$1" ]; then
    docker-compose build --no-cache $1
    docker-compose up -d $1
else
    docker-compose build --no-cache
    docker-compose up -d --force-recreate
fi

docker-compose ps