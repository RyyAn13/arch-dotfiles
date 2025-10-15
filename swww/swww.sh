!/usr/bin/bash
#inicie o swww
WALLPAPERS_DIR=~/Images/wallpapers/current
WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
swww img "$WALLPAPER"
