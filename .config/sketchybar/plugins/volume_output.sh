#!/bin/sh

source "$HOME/.config/sketchybar/colors.sh"

CURRENT="$(SwitchAudioSource -c -t output)"

INDEX=0
SwitchAudioSource -a -t output | while read -r DEVICE
do
  INDEX=$((INDEX+1))
  ITEM="audio.device.$INDEX"

  if [ "$DEVICE" = "$CURRENT" ]; then
    sketchybar --set "$ITEM" icon="􀞉" icon.color=$BLUE
  else
    sketchybar --set "$ITEM" icon="􀞈" icon.color=$WHITE
  fi
done
