#!/bin/sh

usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then
	xrdb -merge $sysresources
fi

if [  -f $sysmodmap ]; then
	xmodmap $sysmodmap
fi

if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# start some nice programs

if [ - /etc/X11/xinit/xinitrc. ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Display Resolution
xrandr --output eDP-1 --mode 1920x1200 &

# Set Output Monitors
xrandr --output eDP-1 --auto
xrandr --output HDM1-A-1-0 --auto --right-of eDP-1-1

# Compositor
picom &

# Wallpaper
sh ~/dwmstuff/.fehbg &

# Keyboard Shortcuts
sxhkd &

# Status Bar
dwmblocks &

redshift -l 27.9475:-82.458333 &

# Snipping Tool
# flameshot &

xrdb ~/.Xresources

exec dwm
