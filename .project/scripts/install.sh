#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../../
}

function createEnvFile() {
    echo "Creating a new configuration file in project root directory."
    touch .env
    echo "PROJECT_NAME=ProjectName" >> ./.env
    echo "EDITOR_PORT=8070" >> ./.env
}

function createSourceFolder() {
    echo "Creating src folder"
    mkdir src
}

function initGitProject() {
    echo "Creating new git project"
    rm -R .git
    git init
    git add -A
}

function removeREADME() {
    rm README.md
}

function installProject(){
    createEnvFile && \
    createSourceFolder && \
    removeREADME && \
    initGitProject
}

function getStartedMessage() {
    echo ""
    echo "Succuessfully installed a new Project!"
    echo ""
    echo "To get Started:"
    echo "  - Configure the .env file in the root directory"
    echo "  - Edit the development environment's Dockerfile in .project/config/Dockerfile.editor"
    echo "  - Build the workspace image using ./gitcloud build"
    echo "  - Start the development environment using ./gitcloud start"
    echo ""
}


gotoScriptDirectory && \
cat ./.project/config/logo && \
echo "" && echo "" && \
installProject && \
getStartedMessage