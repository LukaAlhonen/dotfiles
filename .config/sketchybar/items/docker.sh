#! /bin/sh

docker=(
  # icon="􀐞"
  icon="􀐟"
  icon.color=$BLUE
  label.color=$WHITE
  label="x"
  label.padding_right=7
  icon.padding_left=7
  icon.padding_right=7
  label.y_offset=1
  icon.y_offset=1
)

sketchybar --add item docker right \
           --set docker "${docker[@]}"
