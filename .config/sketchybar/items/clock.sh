clock=(
  update_freq=10
  icon=􀐬
  icon.color=$RED
  label.color=$WHITE
  icon.padding_left=0
  label.padding_right=7
  label.y_offset=1
  icon.y_offset=1
  script="$PLUGIN_DIR/clock.sh"
)

sketchybar --add item clock right \
           --set clock "${clock[@]}" \
