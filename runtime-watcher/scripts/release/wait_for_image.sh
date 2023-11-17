#!/usr/bin/env bash

set -o nounset
set -o errexit
set -E
set -o pipefail

DOCKER_IMAGE=$1

#for i in {1..30} ; do
for i in {1..3} ; do
    if $(docker manifest inspect $1 > /dev/null 2>&1); then
	    exit 0
    fi
    echo "Attempt $i: Docker image: $DOCKER_IMAGE doesn't exist"
    sleep 30
done

echo "Fail: Docker image: $DOCKER_IMAGE doesn't exist"
exit 1

