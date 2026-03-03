#!/bin/sh

 # The volume_change event supplies a $INFO variable in which the current volume
 # percentage is passed to the script.

if [ "$SENDER" = "volume_change" ]; then
  source "$HOME/.config/sketchybar/colors.sh"
  VOLUME="$INFO"

  case "$VOLUME" in
    [6-9][0-9]|100) ICON="􀊧" COLOR=$BLUE
    ;;
    [3-5][0-9]) ICON="􀊥" COLOR=$BLUE
    ;;
    [1-9]|[1-2][0-9]) ICON="􀊡" COLOR=$YELLOW
    ;;
    *) ICON="􀊣" COLOR=$RED
  esac

  sketchybar --set "$NAME" icon="$ICON" icon.color=$COLOR
  #  label="$VOLUME%"
fi
