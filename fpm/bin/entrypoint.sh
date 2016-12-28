#!/bin/bash
set -e

# There is an issue within docker that prevents non-privileged users from
# writing to stdout
#
# https://github.com/docker/docker/issues/6880#issuecomment-170214851

if [ ! -d /tmp ]; then
    mkdir -p /tmp
fi

if [ ! -e /tmp/stdout ]; then
    mkfifo -m 666 /tmp/stdout
fi

cat <> /tmp/stdout 1>&2 &

exec "$@"
