#!/bin/sh

WEATHER_JSON=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=60.1699&longitude=24.9384&current_weather=true")

TEMPERATURE=$(echo "$WEATHER_JSON" | jq '.current_weather.temperature')

sketchybar --set $NAME label="$TEMPERATURE °C"
