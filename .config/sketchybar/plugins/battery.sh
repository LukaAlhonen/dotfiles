#!/bin/sh

source "$HOME/.config/sketchybar/colors.sh"

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100)
    ICON="􀛨"
    COLOR=$CAT_GREEN
  ;;
  [6-8][0-9])
    ICON="􀺸"
    COLOR=$CAT_GREEN
  ;;
  [3-5][0-9])
    ICON="􀺶"
    COLOR=$CAT_GREEN
  ;;
  [1-2][0-9])
    ICON="􀛩"
    COLOR=$CAT_YELLOW
  ;;
  *)
    ICON="􀛪"
    COLOR=$CAT_RED
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="􀢋"
  COLOR=$CAT_GREEN
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%" icon.color="$COLOR"
