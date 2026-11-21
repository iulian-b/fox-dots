#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
xrandr --output DisplayPort-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-1 --off --output HDMI-A-0 --off --output HDMI-A-1 --mode 1920x515 --pos 1920x1080 --rotate left --output HDMI-A-1-2 --off --output DisplayPort-1-2 --off --output DisplayPort-1-3 --off --output DisplayPort-1-4 --off
PS1='[\u@\h \W]\$ '
