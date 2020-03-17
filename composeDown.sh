#!/bin/sh

echo "compose stop..."
docker-compose stop
wait

echo "compose down..."
docker-compose down
wait

echo "end"
