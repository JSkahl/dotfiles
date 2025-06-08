# !/bin/zsh

# Get default wallpaper path
used_wallpaper=${WALLPAPER:-"$(cat ~/.cache/swww/eDP-1)"}

# Set wallpaper
# swww img "$used_wallpaper"

# Set color pallete based on the wallpaper
wal -q -i "$used_wallpaper"

# Set new wallpaper to the hyprlock conf
sed -i "s|path = .*|path = $used_wallpaper|" ~/.config/hypr/hyprlock.conf

# Set new pallete to the waybar
pkill waybar && hyprctl dispatch exec waybar

echo "Using wallpaper: $used_wallpaper"
