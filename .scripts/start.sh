#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../
}

function startDocker(){
    echo "Stopping Docker"
    docker-compose -f .docker/docker-compose.yml down
    cp .env .docker/.env
    echo "Starting Docker"
    docker-compose -f .docker/docker-compose.yml up -d
}

gotoScriptDirectory
startDocker