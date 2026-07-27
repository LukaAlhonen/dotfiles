#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
  source "$HOME/.config/sketchybar/colors.sh"
  ICON="􀆪"
  COLOR=$CAT_YELLOW
  LABEL=$INFO
  case "$INFO" in
    "WezTerm")
      ICON="􀪏" COLOR=$CAT_RED
      ;;
    "Steam Helper")
      ICON="􀛹" COLOR=$CAT_BLUE LABEL="Steam"
      ;;
    "Steam")
      ICON="􀛹" COLOR=$CAT_BLUE LABEL="Steam"
      ;;
    "Balatro")
      ICON="􀊵" COLOR=$CAT_RED
      ;;
    "Zed")
      ICON="􀤙" COLOR=$CAT_RED
      ;;
    "Docker Desktop")
      ICON="􀐟" COLOR=$CAT_BLUE
      ;;
    "Safari")
      ICON="􀎭" COLOR=$CAT_BLUE
      ;;
    "Spotify")
      ICON="􂙩" COLOR=$CAT_GREEN
      ;;
    "Xcode")
      ICON="􀙅" COLOR=$CAT_BLUE
      ;;
    "Finder")
      ICON="􀈖" COLOR=$CAT_BLUE
      ;;
    "System Settings")
      ICON="􀍟" COLOR=$CAT_BLUE
      ;;
    "ChatGPT")
      ICON="􀣳" COLOR=$CAT_GREEN
      ;;
    "Notes")
      ICON="􀓕" COLOR=$CAT_BLUE
      ;;
    "Pages")
      ICON="􁚛" COLOR=$CAT_BLUE
      ;;
    "IntelliJ IDEA")
      ICON="􂊭" COLOR=$CAT_RED
      ;;
    "Mail")
      ICON="􀍖" COLOR=$CAT_BLUE
      ;;
    "Zen")
      ICON="􀨁" COLOR=$CAT_RED
      ;;
    *)
      ICON="􀆪" COLOR=$CAT_YELLOW
      ;;
  esac
  sketchybar --set "$NAME" label="$LABEL" icon="$ICON" icon.color=$COLOR
fi
