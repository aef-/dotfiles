#!/bin/sh
xset +fp /usr/share/fonts/local
xset fp rehash

i3status | dzen2 -bg black -ta r -x 600 -y 880 -w 1000 -fn "-*-terminus-*-*-*-*-*-*-*-*-*-*-*-*" &
urxvtd -o -f -q &
feh --bg-center /usr/share/backgrounds/Arch_Linux_Bluewave_by_BalanceST.jpg &
VBoxClient-all &
exec i3
