#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../../
}

function build(){
    echo "Creating Dockerfile"
    touch .project/docker/vscode/Dockerfile.editor.complete 2> /dev/null
    echo "" > .project/docker/vscode/Dockerfile.editor.complete
    cat .project/docker/vscode/Dockerfile.base > .project/docker/vscode/Dockerfile.editor.complete
    cat .project/config/Dockerfile.editor >> .project/docker/vscode/Dockerfile.editor.complete
    docker-compose build
}

gotoScriptDirectory
build