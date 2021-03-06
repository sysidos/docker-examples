#!/bin/bash

docker-compose build --no-cache

docker-compose up --no-start
docker-compose start crdb-0
docker-compose start crdb-1
docker-compose start crdb-2
docker-compose start lb

sleep 5

docker-compose exec crdb-0 /cockroach/cockroach sql --insecure --execute="CREATE DATABASE ycsb;"

echo "starting ycsb..."
docker-compose start ycsb
