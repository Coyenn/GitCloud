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
EDITOR_PORT=8070
TRAEFIK_WEB_PORT=80
TRAEFIK_API_PORT=8080
GIT_USER=Test
GIT_USER_EMAIL=test@test.com
" > ./.env
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

function getStartedMessage() {
    echo ""
    echo "Succuessfully installed a new Project!"
    echo ""
    echo "To get Started:"
    echo "  - Configure the .env file in the root directory"
    echo "  - Edit the development environment's Dockerfile in .project/config/Dockerfile.editor"
    echo "  - Build the workspace image using ./control build"
    echo "  - Start the development environment using ./control start"
    echo ""
}

gotoScriptDirectory && \
installProject && \
getStartedMessage