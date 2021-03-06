#!/bin/bash

function run {
  if ! pgrep $1; then
    $@ &
  fi
}
# run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
#run xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal
run nm-applet
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon

#you can set wallpapers in themes as well
#run applications from startup
run nitrogen --restore
run /usr/lib/geoclue-2.0/demos/agent &
#run redshift -l -26.243440:-48.637940
run kdeconnect-indicator
# run gnome-clocks
run copyq
# run mailspring
run redshift
# run slimbookbattery
