#!/bin/bash
set -e

if [ "$1" = 'bamboo-agent-android' ]; then
    exec java -jar /data/atlassian-bamboo-agent-installer-6.1.0.jar $BAMBOO_SERVER
fi

exec "$@"
