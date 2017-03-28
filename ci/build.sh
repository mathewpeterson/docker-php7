#!/bin/sh

set -e

TARGET=$1

source $(dirname "$0")/common.sh

cd $TARGET && docker build -t $IMAGE_TAG .

# docker push $DOCKER_REGISTRY_HOST/$DOCKER_IMAGE:$VERSION-$TARGET
# docker tag $DOCKER_IMAGE/$VERSION-$TARGET $DOCKER_REGISTRY_HOST/$DOCKER_IMAGE:latest-$TARGET
# docker push $DOCKER_REGISTRY_HOST/$DOCKER_IMAGE:latest-$TARGET
