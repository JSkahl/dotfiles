#!/bin/zsh

battery_status=$(cat /sys/class/power_supply/BAT0/status)
battery_percentage=$(cat /sys/class/power_supply/BAT0/capacity)

if [[ $battery_status == "Charging" ]]; then
    icon="󰂄" # Charging icon
elif [[ $battery_status == "Full" ]]; then
    icon="󰁹" # Full battery icon
elif [[ $battery_percentage -ge 95 ]]; then
    icon="󰁹"
elif [[ $battery_percentage -ge 80 ]]; then
    icon="󰂂"
elif [[ $battery_percentage -ge 60 ]]; then
    icon="󰂀"
elif [[ $battery_percentage -ge 40 ]]; then
    icon="󰁾"
elif [[ $battery_percentage -ge 20 ]]; then
    icon="󰁼"
else
    icon="󰁻" # Critical battery icon
fi

echo "$battery_percentage% $icon"
