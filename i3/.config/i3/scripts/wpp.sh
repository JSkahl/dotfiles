#!/bin/sh

# Get wallpaper
wallpaper=$(cat $HOME/.cache/wallpaper)

# Set wallpaper
feh --bg-scale $wallpaper
