#!/bin/sh

source "$HOME/.config/sketchybar/colors.sh"

CURRENT="$(SwitchAudioSource -c -t output)"

INDEX=0
SwitchAudioSource -a -t output | while read -r DEVICE
do
  INDEX=$((INDEX+1))
  ITEM="audio.device.$INDEX"

  if [ "$DEVICE" = "$CURRENT" ]; then
    sketchybar --set "$ITEM" icon="􀞉" icon.color=$CAT_BLUE
  else
    sketchybar --set "$ITEM" icon="􀞈" icon.color=$CAT_ROSEWATER
  fi
done
