#!/bin/sh

source "$CONFIG_DIR/colors.sh"

if [ "$SELECTED" = "true" ]; then
  sketchybar --set "$NAME" \
    icon="􀏨" \
    icon.color=$BLUE
else
  sketchybar --set "$NAME" \
    icon="􀏧" \
    icon.color=$WHITE
fi
