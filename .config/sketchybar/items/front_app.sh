#!/bin/sh

front_app=(
  script="$PLUGIN_DIR/front_app.sh"
  label.color=$CAT_TEXT
  icon.color=$CAT_MANTLE
  icon.background.drawing=on
  icon.background.color=$CAT_YELLOW
  icon.background.height=25
  icon.background.corner_radius=5
  label.padding_right=7
  label.padding_left=7
  icon.padding_left=7
  icon.padding_right=8
  icon.y_offset=1
  label.y_offset=1
  background.drawing=on
  background.color=$CAT_MANTLE
  background.corner_radius=5
  background.height=25
)

sketchybar --add item chevron left \
           --set chevron icon=􀆊 label.drawing=off icon.color=$CAT_TEXT \
           --add item front_app left \
           --set front_app "${front_app[@]}" \
           --subscribe front_app front_app_switched
