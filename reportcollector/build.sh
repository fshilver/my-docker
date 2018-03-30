#!/bin/sh

if [ $# -ne 1 ];then
    echo "Usage:$0 <version>"
    exit 1
fi

docker build --build-arg VERSION=$1 --tag reportcollector:$1 .
