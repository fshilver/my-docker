#!/bin/sh

VERSION=$(egrep '^# version' Dockerfile | awk '{print $3}')
NAME=$(egrep '^# name' Dockerfile | awk '{print $3}')
docker build --tag ${NAME}:${VERSION} .
