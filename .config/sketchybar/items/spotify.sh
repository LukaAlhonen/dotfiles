#!/bin/sh

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

spotify=(
    # icon=
    icon="􂙩"
    # icon.font.size=25
    label.drawing=off
    label.padding_right=7
    icon.padding_left=7
    icon.padding_right=7
    label.y_offset=1
    icon.y_offset=1
    background.drawing=on
    icon.color=$WHITE
    label.color=$WHITE
    background.corner_radius=5
    background.height=25
    script="$PLUGIN_DIR/spotify.sh"
)

sketchybar --add event spotify_change $SPOTIFY_EVENT \
    --add item spotify e \
    --set spotify "${spotify[@]}"\
    --subscribe spotify spotify_change mouse.clicked
