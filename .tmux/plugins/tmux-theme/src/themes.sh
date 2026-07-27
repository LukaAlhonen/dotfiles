#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tmux-theme_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @tmux-theme_transparent)"

case $SELECTED_THEME in
"storm")
  declare -A THEME=(
    ["background"]="#24283b"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#414868"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#f7768e"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;

"catppuccin")
  declare -A THEME=(
    ["background"]="#24273A"
    ["foreground"]="#CAD3F5"
    ["black"]="#181926"
    ["blue"]="#8AADF4"
    ["cyan"]="#91D7E3"
    ["green"]="#A6DA95"
    ["magenta"]="#C6A0F6"
    ["red"]="#ED8796"
    ["white"]="#CAD3F5"
    ["yellow"]="#EED49F"

    ["bblack"]="#494D64"
    ["bblue"]="#7DC4E4"
    ["bcyan"]="#B7BDF8"
    ["bgreen"]="#8BD5C2"
    ["bmagenta"]="#F5BDE6"
    ["bred"]="#EE99A0"
    ["bwhite"]="#F4DBD6"
    ["byellow"]="#F5A97F"
  )
  ;;

*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#1A1B26"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#0A84FF"
    ["cyan"]="#7dcfff"
    ["green"]="#59C9A5"
    ["magenta"]="#bb9af7"
    ["red"]="#d16983"
    ["white"]="#ffffff"
    ["yellow"]="#e0af68"

    ["bblack"]="#2A2F41"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#ff9e64"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
