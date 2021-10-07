#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../../
}

function startDocker(){
    echo "Stopping Docker"
    docker-compose -f .project/docker/docker-compose.yml down
    cp .env .project/docker/.env
    echo "Starting Docker"
    docker-compose -f .project/docker/docker-compose.yml up -d
}

gotoScriptDirectory
startDocker