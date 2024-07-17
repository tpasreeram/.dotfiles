#!/bin/bash

if [[ ! -d ~/scripts ]]; then
  mkdir ~/scripts
fi

for filename in {,.}*; do
  [ -e "$filename" ] || continue

  if [[ $filename != "init.sh" ]]; then
    ln -s ~/.dotfiles/scripts/$filename ~/scripts/$filename
  fi
done
