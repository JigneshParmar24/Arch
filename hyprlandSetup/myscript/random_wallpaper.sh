#!/bin/bash

wall=$(find ~/pic/wallpaper -type f -iname "*.jpg" -o -iname "*.png" | shuf -n 1)

# Set wallpaper using hyprpaper
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$wall"
hyprctl hyprpaper wallpaper "DP-1,$wall"

