#!/usr/bin/env bash

VERSION=$(git rev-parse --abbrev-ref HEAD)
echo "  VERSION: ${VERSION}"
docker build --rm -t filipeforattini/firebase-server:$VERSION .
docker push filipeforattini/firebase-server:$VERSION
