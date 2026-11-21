#!/bin/sh

if [ "$DESKTOP_SESSION" = "bspwm" ]; then 
   # No widgets enabled!
   exit 0
fi
if [ "$DESKTOP_SESSION" = "niri" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky/fox-conky"
   conky -c "$HOME/.conky/fox-conky/config.conf" &
   exit 0
fi
