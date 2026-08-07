#!/bin/sh

source "$CONFIG_DIR/colors.sh"

if [ "$SELECTED" = "true" ]; then
  sketchybar --set "$NAME" \
    icon="􀏨" \
    icon.color=$CAT_MAUVE
else
  sketchybar --set "$NAME" \
    icon="􀏧" \
    icon.color=$CAT_MAUVE
fi
