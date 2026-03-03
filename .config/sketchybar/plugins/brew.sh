#!/bin/sh
source "$HOME/.config/sketchybar/colors.sh"

COUNT=$(/bin/zsh -c "brew outdated -q | wc -l | tr -d ' \n'")

COLOR=$RED
case "$COUNT" in
  [3-9][0-9]|[1-9][0-9][0-9]*) COLOR=$RED ;;
  [1-2][0-9]) COLOR=$YELLOW ;;
  [1-9]) COLOR=$WHITE ;;
  0) COLOR=$GREEN ;;
esac

sketchybar --set brew label="$COUNT" icon.color="$COLOR"
