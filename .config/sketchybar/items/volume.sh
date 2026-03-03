#!/bin/sh

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle --set \$NAME popup.topmost=on --set \$NAME popup.background.drawing=on --set \$NAME popup.background.color=$BLACK2 --set \$NAME popup.background.border_color=$BORDER_COLOR --set \$NAME popup.background.border_width=1 --set \$NAME popup.background.corner_radius=5"

volume_icon=(
  script="$PLUGIN_DIR/volume.sh"
  label.drawing=off
  icon.padding_right=7
  icon.y_offset=1
  click_script="$POPUP_CLICK_SCRIPT"
  width=30
  align=center
)

volume_slider=(
  script="$PLUGIN_DIR/volume_slider.sh"
  updates=on
  label.drawing=off
  icon.drawing=off
  slider.background.height=5
  slider.background.corner_radius=3
  slider.background.color=$WHITE
  slider.knob="􀀁"
  slider.knob.drawing=on
  slider.width=200
  padding_right=15
  padding_left=15
)

sketchybar --add item volume.icon right                           \
           --set volume.icon "${volume_icon[@]}"                  \
           --subscribe volume.icon volume_change                  \
                                                                  \
           --add slider volume.slider popup.volume.icon           \
           --set volume.slider "${volume_slider[@]}"              \
           --subscribe volume.slider volume_change mouse.clicked  

CURRENT="$(SwitchAudioSource -c -t output)"

INDEX=0

SwitchAudioSource -a -t output | while read -r DEVICE
do
  INDEX=$((INDEX+1))

  ITEM="audio.device.$INDEX"

  sketchybar --add item "$ITEM" popup.volume.icon \
             --set "$ITEM" \
             label="$DEVICE" \
             icon="$ICON" \
             icon.color=$COLOR \
             click_script="SwitchAudioSource -t output -s \"$DEVICE\"; sketchybar --trigger audio_output_changed" \
             script="$PLUGIN_DIR/volume_output.sh" \
             --subscribe "$ITEM" audio_output_changed
done
