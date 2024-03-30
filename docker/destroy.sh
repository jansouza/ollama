#!/bin/bash
set -e

command -v docker-compose >/dev/null 2>&1 || {
    echo "The Docker Compose is not installed. Please install it before running this script."
    exit 1
}

if [ -n "$1" ]; then
    docker-compose rm -sf $1
else
    docker-compose down --rmi all
fi

docker-compose ps