#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_PATH="$CURRENT_DIR/src"

source $SCRIPTS_PATH/themes.sh

tmux set -g status-left-length 80
tmux set -g status-right-length 150

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
# Highlight colors
tmux set -g mode-style "fg=${THEME[foreground]},bg=${THEME[bblack]}"

tmux set -g message-style "bg=${THEME[background]},fg=${THEME[bwhite]}"
tmux set -g message-command-style "fg=${THEME[bwhite]},bg=${THEME[background]}"

tmux set -g pane-border-style "fg=${THEME[bblack]}"
tmux set -g pane-active-border-style "fg=${THEME[foreground]}"
tmux set -g pane-border-status off

tmux set -g status-style bg="${THEME[background]}"

tmux set -g status on

TMUX_VARS="$(tmux show -g)"

default_window_id_style="digital"
default_pane_id_style="hsquare"
default_zoom_id_style="dsquare"

default_terminal_icon="􀩼 "
default_active_terminal_icon="􀪏 "

window_id_style="$(echo "$TMUX_VARS" | grep '@tmux-theme_window_id_style' | cut -d" " -f2)"
pane_id_style="$(echo "$TMUX_VARS" | grep '@tmux-theme_pane_id_style' | cut -d" " -f2)"
zoom_id_style="$(echo "$TMUX_VARS" | grep '@tmux-theme_zoom_id_style' | cut -d" " -f2)"
terminal_icon="$(echo "$TMUX_VARS" | grep '@tmux-theme_terminal_icon' | cut -d" " -f2)"
active_terminal_icon="$(echo "$TMUX_VARS" | grep '@tmux-theme_active_terminal_icon' | cut -d" " -f2)"
window_tidy="$(echo "$TMUX_VARS" | grep '@tmux-theme_window_tidy_icons' | cut -d" " -f2)"

window_id_style="${window_id_style:-$default_window_id_style}"
pane_id_style="${pane_id_style:-$default_pane_id_style}"
zoom_id_style="${zoom_id_style:-$default_zoom_id_style}"
terminal_icon="${terminal_icon:-$default_terminal_icon}"
active_terminal_icon="${active_terminal_icon:-$default_active_terminal_icon}"
window_space="${window_tidy:-0}"

window_space=$([[ $window_tidy == "0" ]] && echo " " || echo "")

git_status="#($SCRIPTS_PATH/git-status.sh #{pane_current_path})"
wb_git_status="#($SCRIPTS_PATH/wb-git-status.sh #{pane_current_path} &)"
current_path="#($SCRIPTS_PATH/path-widget.sh #{pane_current_path})"

#+--- Bars LEFT ---+
# Session name
tmux set -g status-left "$RESET#[bg=${THEME[bblack]},fg=${THEME[bred]}]#{?client_prefix,▊ ,#[dim]#[fg=${THEME[bwhite]}]▊ }$RESET#[bg=${THEME[bblack]},fg=${THEME[bred]}]#{?client_prefix,􁹜  ,#[dim]#[fg=${THEME[bwhite]}]􁹛  }#[bold,nodim]#S$hostname $RESET "

#+--- Windows ---+
# Focus
tmux set -g window-status-current-format "$RESET #[fg=${THEME[blue]},bg=${THEME[bblack]}]#{?#{==:#{pane_current_command},nvim},▊ 􀉀  ,▊ $active_terminal_icon $window_space}#[fg=${THEME[blue]},bold,nodim]$window_number#W#[nobold]#{?window_zoomed_flag,$zoom_number,$custom_pane} "
# Unfocused
tmux set -g window-status-format "$RESET #[fg=${THEME[lavender]},bg=${THEME[bblack]}]#{?#{==:#{pane_current_command},nvim},▊ 􀈿  ,▊ $terminal_icon $window_space}$window_number#W#[nobold,dim]#{?window_zoomed_flag,$zoom_number,$custom_pane} "

#+--- Bars RIGHT ---+
tmux set -g status-right "$current_path$git_status"
tmux set -g window-status-separator ""
