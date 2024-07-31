#!/bin/sh

xrandr --output eDP-1 --mode 1920x1200 &              # Display Resolution
xrandr --output eDP-1 --auto                          # Monitor 1
xrandr --output HDM1-A-1-0 --auto --right-of eDP-1-1  # Monitor 2 (Right of Monitor 1)

# Wallpaper
feh --no-fehbg --bg-fill '/home/sreer/Pictures/suzume1920x1200.jpeg'

picom &     # Compositor
sxhkd &     # Keyboard Shortcuts
dwmblocks & # Status Bar
dunst &     # Notification Manager
fcitx5 &    # Input Method Framework
flameshot & # Screenshots

# xrdb ~/.Xresources

exec dwm
