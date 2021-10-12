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

function successMessage() {
    echo ""
    echo ""
    echo "Your development environment is running!"
    echo "Connect to the vscode instance using"
    echo ""
    echo "http://localhost:${EDITOR_PORT}/"
    echo "http://$(ip route get 1 | awk '{print $NF;exit}'):$EDITOR_PORT/"
    echo ""
    echo ""
}

gotoScriptDirectory && \
startDocker && \
successMessage