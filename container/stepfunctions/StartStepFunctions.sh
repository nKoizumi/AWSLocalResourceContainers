#!/bin/sh

cd `dirname $0`

END_POINT="http://localhost:8083"
REGION="us-east-1"
DEF_FILE="file://HelloWorld.json"

echo "Stepfunctions state machine create..."

create="aws stepfunctions create-state-machine --endpoint ${END_POINT} --definition ${DEF_FILE} --name "HelloWorld" --role-arn "arn:aws:iam::012345678901:role/DummyRole""
eval $create 2>&1

start="aws stepfunctions start-execution --endpoint ${END_POINT} --state-machine-arn arn:aws:states:us-east-1:123456789012:stateMachine:HelloWorld --name 01"
eval $start 2>&1

status="aws stepfunctions describe-execution --endpoint ${END_POINT} --execution-arn arn:aws:states:us-east-1:123456789012:execution:HelloWorld:01"
eval $status 2>&1

echo "end"
