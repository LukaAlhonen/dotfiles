#!/bin/sh
source "$HOME/.config/sketchybar/colors.sh"

COUNT=$(/bin/zsh -c "brew outdated -q | wc -l | tr -d ' \n'")

COLOR=$CAT_RED
case "$COUNT" in
  [3-9][0-9]|[1-9][0-9][0-9]*) COLOR=$CAT_RED ;;
  [1-2][0-9]) COLOR=$CAT_YELLOW ;;
  [1-9]) COLOR=$CAT_TEXT ;;
  0) COLOR=$CAT_GREEN ;;
esac

sketchybar --set brew label="$COUNT" icon.color="$COLOR" label.color="$CAT_TEXT"
