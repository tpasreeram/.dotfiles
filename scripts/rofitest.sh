#!/usr/bin/env bash

if [ x"$@" = x"󰤄  Sleep" ]
then
  systemctl suspend && exit 0
fi

if [ x"$@" = x"󰿅  Log Out" ]
then
  pkill dwm
fi

if [ x"$@" = x"󰜉  Reboot" ]
then
  pkill dwm && reboot
fi

if [ x"$@" = x"󰐥  Shutdown" ]
then
  pkill dwm && shutdown -h now
fi

echo "󰤄  Sleep"
echo "󰿅  Log Out"
echo "󰜉  Reboot"
echo "󰐥  Shutdown"
