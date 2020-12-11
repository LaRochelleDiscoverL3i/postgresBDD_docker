#!/bin/bash

docker-compose rm -s -v
docker-compose build
docker-compose up -d