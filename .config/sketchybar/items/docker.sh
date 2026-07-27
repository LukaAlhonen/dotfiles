#! /bin/sh

docker=(
  icon="􀐟"
  icon.color=$CAT_BLUE
  label.color=$CAT_TEXT
  label="x"
  label.padding_right=7
  icon.padding_left=7
  icon.padding_right=7
  label.y_offset=1
  icon.y_offset=1
)

sketchybar --add item docker right \
           --set docker "${docker[@]}"
