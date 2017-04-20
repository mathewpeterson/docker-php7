#!/bin/bash

set -e

TARGET=$1

source $(dirname "$0")/common.sh

docker run $IMAGE_TAG php -v
