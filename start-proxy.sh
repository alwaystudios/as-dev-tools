#!/bin/bash

DOCKER_ID=$(docker ps -a | grep local-proxy | cut -d' ' -f1)


if [ -z "$DOCKER_ID" ]; then
    docker build . -t local-proxy
    docker run -p 80:80 -d --name local-proxy local-proxy
else
    docker start $DOCKER_ID
fi
