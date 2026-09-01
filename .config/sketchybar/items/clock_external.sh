clock=(
  update_freq=10
  label.color=$CAT_TEXT
  label.padding_right=10
  label.y_offset=1
  script="$PLUGIN_DIR/clock.sh"
)

sketchybar --add item clock center \
           --set clock "${clock[@]}" \
