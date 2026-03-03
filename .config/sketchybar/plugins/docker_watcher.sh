#! /bin/sh

DOCKER_BIN="/usr/local/bin/docker"
SKETCHYBAR_BIN="/opt/homebrew/bin/sketchybar"

$DOCKER_BIN events --filter type=container 2>/dev/null | while read event; do
    LABEL="$(/Users/luka/.config/sketchybar/plugins/docker.sh)"
    $SKETCHYBAR_BIN --set docker label="$LABEL"
done
