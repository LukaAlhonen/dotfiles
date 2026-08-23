#!/bin/sh

# SPACE_ICONS=("􃎺" "􃎺" "􃎺" "􃎺" "􃎺" "􃎺" "􃎺" "􃎺" "􃎺" "􃎺")
SPACE_LABELS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
for i in "${!SPACE_LABELS[@]}"
do
  sid="$(($i+1))"
  space=(
    space="$sid"
    label="${SPACE_LABELS[i]}"
    icon.padding_left=2
    label.padding_right=2
    label.y_offset=1
    label.color=$CAT_TEXT
    icon.y_offset=1
    label.drawing=on
    script="$PLUGIN_DIR/space.sh"
  )
  sketchybar --add space space."$sid" left --set space."$sid" "${space[@]}"
done

spaces_bracket=(
)

sketchybar --add bracket spaces_bracket \
           space.1 space.2 space.3 space.4 \
           space.5 space.6 space.7 space.8 \
           space.9 space.10 \
           --set spaces_bracket "${spaces_bracket[@]}"
