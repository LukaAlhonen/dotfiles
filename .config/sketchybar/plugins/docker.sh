#!/bin/sh

DOCKER_BIN="/usr/local/bin/docker"

output=$($DOCKER_BIN ps -q 2>&1)
if [[ $output == *"Cannot connect to the Docker daemon"* ]]; then
    echo "x"
elif [ -n "$output" ]; then
    count=$(echo "$output" | wc -l | tr -d ' ')
    echo "$count"
else
    echo "0"
fi
