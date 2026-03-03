#!/bin/sh

weather=(
    # icon=􀇔
    icon="􀇕"
    icon.color=$RED
    label.color=$WHITE
    label.padding_right=7
    icon.padding_left=7

    label.y_offset=1
    icon.y_offset=1
    background.drawing=on
    background.color=$BLACK2
    background.corner_radius=5
    background.height=25
    background.padding_right=20
    update_freq=1800
    script="$PLUGIN_DIR/weather.sh"
)

sketchybar --add item weather right \
    --set weather "${weather[@]}"\
    --subscribe weather system_woke
