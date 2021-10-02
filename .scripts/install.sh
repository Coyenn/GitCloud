#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../
}

function installDocker(){
    echo "Creating a new configuration file in project root directory."
    touch .env
    printf "PROJECT_NAME=ProjectName
EDITOR_PASSWORD=Password
EDITOR_UID=1026
EDITOR_PID=100
EDITOR_PORT=8070" > ./.env
    echo "Creating src folder"
    mkdir src
    echo "Removing old git directory"
    rm -R .git
    echo "Creating new git project"
    git init
    echo "Adding all git files"
    git add -A
    echo "Initially committing"
    git commit -m "Initial boilerplate commit"
}

gotoScriptDirectory
installDocker