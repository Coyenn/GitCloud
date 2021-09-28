#!/usr/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
}

function ensureConfig() {
    DIR="$HOME/.editor_config/"
    echo "Checking for configuration"
    if [ -d "$DIR" ]; then
        echo "No configuration in $HOME. Initiating empty configuration"
        mkdir ~/.editor_config 
        mkdir ~/.editor_config/extensions
        touch ~/.editor_config/settings.json
    else
        echo "Config directory exists"
    fi
}

function startDocker(){
    echo "Stopping Docker"
    docker-compose -f .docker/docker-compose.yml down
    cp .env .docker/.env
    echo "Starting Docker"
    docker-compose -f .docker/docker-compose.yml up -d
}

gotoScriptDirectory
ensureConfig
startDocker
