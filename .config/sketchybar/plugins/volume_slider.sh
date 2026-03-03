#!/bin/sh

WIDTH=100

volume_change() {
  source "$HOME/.config/sketchybar/colors.sh"
  case "$INFO" in
    [6-9][0-9]|100) COLOR=$BLUE
    ;;
    [3-5][0-9]) COLOR=$BLUE
    ;;
    [1-9]|[1-2][0-9]) COLOR=$YELLOW
    ;;
    *) COLOR=$RED
  esac
  sketchybar --set $NAME slider.percentage=$INFO slider.highlight_color=$COLOR
}

mouse_clicked() {
  osascript -e "set volume output volume $PERCENTAGE"
}

case "$SENDER" in
  "volume_change") volume_change
  ;;
  "mouse.clicked") mouse_clicked
  ;;
esac
