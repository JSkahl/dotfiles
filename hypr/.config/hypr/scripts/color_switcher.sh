#!/bin/zsh

# Get default wallpaper path
used_wallpaper=${WALLPAPER:-"$(cat ~/.cache/swww/eDP-1)"}

# Set wallpaper to the hyprlock conf
sed -i "s|path = .*|path = $used_wallpaper|" ~/.config/hypr/hyprlock.conf
# Set wallpaper
swww img "$used_wallpaper"

# Set color pallet based on the wallpaper
wal -q -i "$used_wallpaper"

echo "Using wallpaper: $used_wallpaper"
