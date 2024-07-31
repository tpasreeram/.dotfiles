#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -a'
alias nv='nvim'
alias nano='nvim'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '
