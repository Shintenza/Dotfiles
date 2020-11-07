#!/bin/bash

killall -q compton
while pgrep -u $UID -x compton >/dev/null; do sleep 1; done
compton --config ~/.config/bspwm/compton.conf &
feh --bg-fill ~/Obrazy/wallpaper.jpg &
./.config/polybar/launch.sh &
setxkbmap pl &
redshift -l 50.60705:22.10381 & 
xautolock -time 10 -locker 'i3lock-fancy' &│
/usr/bin/lxpolkit &

