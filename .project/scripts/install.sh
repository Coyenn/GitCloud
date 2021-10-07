#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../../
}

function createEnvFile() {
    echo "Creating a new configuration file in project root directory."
    touch .env
    printf "PROJECT_NAME=ProjectName
EDITOR_PASSWORD=Password
EDITOR_UID=1026
EDITOR_PID=100
EDITOR_PORT=8070" > ./.env
}

function createSourceFolder() {
    echo "Creating src folder"
    mkdir src
}

function initGitProject() {
    echo "Creating new git project"
    git config --global init.defaultBranch main
    rm -R .git
    git init
    git add -A
}

function installREADME() {
    rm README.md
}

function installProject(){
    createEnvFile && \
    createSourceFolder && \
    installREADME && \
    initGitProject
}

gotoScriptDirectory && \
installProject