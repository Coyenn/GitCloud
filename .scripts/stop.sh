#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../
}

function stopDocker(){
    echo "Stopping Docker"
    docker-compose -f .docker/docker-compose.yml down
}

gotoScriptDirectory
stopDocker