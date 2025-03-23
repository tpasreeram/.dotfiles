#!/usr/bin/env zsh

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# Doom Emacs
export PATH=~/.config/emacs/bin:$PATH

# ROCM
# export PATH=~/.config/emacs/bin:$PATH

# Fcitx5
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GLFW_IM_MODULE=ibus

# Rust
. "$HOME/.cargo/env"
