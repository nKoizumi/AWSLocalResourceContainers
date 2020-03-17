#!/bin/sh

echo "compose stop..."

docker-compose stop
wait

echo "end"
