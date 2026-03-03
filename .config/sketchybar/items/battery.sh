#!/bin/sh

battery=(
  update_freq=120
  script="$PLUGIN_DIR/battery.sh"
  icon.color=$WHITE
  icon.padding_left=0
  label.padding_right=7
  label.color=$WHITE
  label.y_offset=1
  icon.y_offset=1
  # background.drawing=on
  # background.color=$BLACK2
  # background.corner_radius=5
  # background.height=25
)

sketchybar --add item battery right \
           --set battery "${battery[@]}" \
           --subscribe battery system_woke power_source_change
