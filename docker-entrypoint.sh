#!/usr/bin/env sh

set -e

sed -i "s/level: info/level: $LOG_LEVEL/" config.yaml

exec "$@"
