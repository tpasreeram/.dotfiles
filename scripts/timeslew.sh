#!/bin/bash

~/scripts/sudoer.sh

sudo ntpd -qg
echo "Adjusting hardware clock"
sudo hwclock --systohc
timedatectl status
