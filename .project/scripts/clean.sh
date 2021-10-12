#!/bin/bash

function gotoScriptDirectory(){
    cd "$(dirname "$0")" || exit
    cd ../../
}

function clean(){
    echo "Cleaning"
    docker rmi "$(docker images -a|grep "<none>"|awk '$1=="<none>" {print $3}')" &> /dev/null
    echo "Cleaned dangling docker images"
}

gotoScriptDirectory
clean