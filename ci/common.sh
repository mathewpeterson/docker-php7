#!/bin/sh

set -e

VERSION=$(cat ../VERSION)
DOCKER_REGISTRY_HOST=${DOCKER_REGISTRY_HOST:-hub.docker.com}
DOCKER_IMAGE=${DOCKER_IMAGE:-mathewpeterson/php7}
IMAGE_TAG=${DOCKER_IMAGE}/${VERSION}-${TARGET}
