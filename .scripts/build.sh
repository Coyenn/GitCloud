#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../
}

function build(){
    echo "Creating Dockerfile"
    touch .docker/vscode/Dockerfile.editor.complete 2> /dev/null
    echo "" > .docker/vscode/Dockerfile.editor.complete
    cat .docker/vscode/Dockerfile.base > .docker/vscode/Dockerfile.editor.complete
    cat Dockerfile.editor >> .docker/vscode/Dockerfile.editor.complete
    docker-compose build
}

gotoScriptDirectory
build