#!/bin/sh

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

spotify=(
    icon="􂙩"
    label="Spotify"
    label.drawing=off
    label.padding_right=7
    icon.padding_left=7
    icon.padding_right=7
    label.y_offset=1
    icon.y_offset=1
    background.drawing=on
    background.border_width=2
    background.border_color=$CAT_SURFACE1
    icon.color=$CAT_GREEN
    label.color=$CAT_TEXT
    background.corner_radius=5
    background.height=25
    script="$PLUGIN_DIR/spotify_external.sh"
)

sketchybar --add event spotify_change $SPOTIFY_EVENT \
    --add item spotify right \
    --set spotify "${spotify[@]}"\
    --subscribe spotify spotify_change mouse.clicked
