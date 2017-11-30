#!/usr/bin/env bash

VERSION=$(git rev-parse --abbrev-ref HEAD)
docker build --rm -t filipeforattini/firebase-server:$VERSION .
docker push filipeforattini/firebase-server:$VERSION
