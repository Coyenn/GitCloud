#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../
}

function installDocker(){
    echo "Created a new configuration file in project root directory."
    touch .env2
    printf "PROJECT_NAME=ProjectName
EDITOR_PASSWORD=Password
EDITOR_UID=1026
EDITOR_PID=100
EDITOR_PORT=8070" > ./.env2
}

gotoScriptDirectory
installDocker