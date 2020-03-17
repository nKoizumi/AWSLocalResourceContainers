#!/bin/sh

echo "compose up..."

docker-compose up -d
wait

sh ./container/stepfunctions/StartStepFunctions.sh

echo "end"
