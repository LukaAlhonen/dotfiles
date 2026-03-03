#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
  source "$HOME/.config/sketchybar/colors.sh"
  ICON="􀆪"
  COLOR=$YELLOW
  case "$INFO" in
    "WezTerm")
      ICON="􀪏" COLOR=$RED
      ;;
    "Zed")
      ICON="􀤙" COLOR=$RED
      ;;
    "Docker Desktop")
      ICON="􀐟" COLOR=$BLUE
      ;;
    "Safari")
      ICON="􀎭" COLOR=$BLUE
      ;;
    "Spotify")
      ICON="􂙩" COLOR=$GREEN
      ;;
    "Xcode")
      ICON="􀙅" COLOR=$BLUE
      ;;
    "Finder")
      ICON="􀈖" COLOR=$BLUE
      ;;
    "System Settings")
      ICON="􀍟" COLOR=$BLUE
      ;;
    "ChatGPT")
      ICON="􀣳" COLOR=$GREEN
      ;;
    *)
      ICON="􀆪" COLOR=$YELLOW
      ;;
  esac
  sketchybar --set "$NAME" label="$INFO" icon="$ICON" icon.color=$COLOR
fi
