#!/bin/sh

battery=(
  update_freq=120
  script="$PLUGIN_DIR/battery.sh"
  icon.color=$CAT_TEXT
  icon.padding_left=0
  label.padding_right=7
  label.color=$CAT_TEXT
  label.y_offset=1
  icon.y_offset=1
)

sketchybar --add item battery right \
           --set battery "${battery[@]}" \
           --subscribe battery system_woke power_source_change
