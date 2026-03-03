#!/bin/sh

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle --set \$NAME popup.topmost=on --set \$NAME popup.background.drawing=on --set \$NAME popup.background.color=$BLACK2 --set \$NAME popup.background.border_color=$BORDER_COLOR --set \$NAME popup.background.border_width=1 --set \$NAME popup.background.corner_radius=5"

apple_logo=(
  icon="􀣺"
  icon.color=$WHITE
  padding_right=15
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
)

apple_prefs=(
  icon="􀍟"
  icon.color=$WHITE
  label="Preferences"
  click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
  icon="􀊫"
  icon.color=$BLUE
  label="Activity"
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
  icon="􀎠"
  icon.color=$GREEN
  label="Lock Screen"
  click_script="pmset displaysleepnow; $POPUP_OFF"
)

apple_shutdown=(
  icon="􀆨"
  icon.color=$RED
  label="Shut Down"
  click_script="osascript -e 'tell app \"System Events\" to shut down'"
)

apple_reboot=(
  icon="􀎀"
  icon.color=$YELLOW
  label="Reboot"
  click_script="osascript -e 'tell app \"System Events\" to restart'"
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"         \
                                                       \
           --add item apple.prefs popup.apple.logo     \
           --set apple.prefs "${apple_prefs[@]}"       \
                                                       \
           --add item apple.activity popup.apple.logo  \
           --set apple.activity "${apple_activity[@]}" \
                                                       \
           --add item apple.lock popup.apple.logo      \
           --set apple.lock "${apple_lock[@]}"         \
                                                       \
           --add item apple.shutdown popup.apple.logo  \
           --set apple.shutdown "${apple_shutdown[@]}" \
                                                       \
           --add item apple.reboot popup.apple.logo    \
           --set apple.reboot "${apple_reboot[@]}"     \
