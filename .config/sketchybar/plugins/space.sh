#!/bin/sh

source "$CONFIG_DIR/colors.sh"

if [ "$SELECTED" = "true" ]; then
  sketchybar --set "$NAME" \
    icon="􀏨" \
    icon.color=$CAT_BLUE
else
  sketchybar --set "$NAME" \
    icon="􀏧" \
    icon.color=$CAT_ROSEWATER
fi
