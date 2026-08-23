#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
  source "$HOME/.config/sketchybar/colors.sh"
  ICON="􀆪"
  COLOR=$CAT_PEACH
  LABEL=$INFO
  case "$INFO" in
    "WezTerm")
      ICON="􁹜" COLOR=$CAT_BLUE
      ;;
    "Steam Helper")
      ICON="􀛹" COLOR=$CAT_BLUE LABEL="Steam"
      ;;
    "Steam")
      ICON="􀛹" COLOR=$CAT_BLUE LABEL="Steam"
      ;;
    "Balatro")
      ICON="􀊵" COLOR=$CAT_SAPPHIRE
      ;;
    "Zed")
      ICON="􀋨" COLOR=$CAT_YELLOW
      ;;
    "Docker Desktop")
      ICON="􀐟" COLOR=$CAT_BLUE
      ;;
    "Safari")
      ICON="􀎭" COLOR=$CAT_MAUVE
      ;;
    "Spotify")
      ICON="􂙩" COLOR=$CAT_GREEN
      ;;
    "Xcode")
      ICON="􀙅" COLOR=$CAT_MAUVE
      ;;
    "Finder")
      ICON="􀈖" COLOR=$CAT_MAUVE
      ;;
    "System Settings")
      ICON="􀍟" COLOR=$CAT_MAUVE
      ;;
    "ChatGPT")
      ICON="􀣳" COLOR=$CAT_TEAL
      ;;
    "Notes")
      ICON="􀓕" COLOR=$CAT_MAUVE
      ;;
    "Pages")
      ICON="􁚛" COLOR=$CAT_MAUVE
      ;;
    "IntelliJ IDEA")
      ICON="􂊭" COLOR=$CAT_SAPPHIRE
      ;;
    "Mail")
      ICON="􀍖" COLOR=$CAT_MAUVE
      ;;
    "Zen")
      ICON="􀨁" COLOR=$CAT_LAVENDER
      ;;
    "Obsidian")
      ICON="􁞓 " COLOR=$CAT_MAUVE
      ;;
    *)
      ICON="􃎺" COLOR=$CAT_PEACH
      ;;
  esac
  sketchybar --set "$NAME" label="$LABEL" icon="$ICON" icon.background.color=$COLOR
fi
