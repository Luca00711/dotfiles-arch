#!/bin/sh
dbus-update-activation-environment --all

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# set the background
if [ -f /usr/bin/feh ]; then
    feh --bg-fill ~/bg/endeavouros-wallpaper-dark-2.webp &
fi

if [ -f /usr/bin/xset ]; then
    xset r rate 300 40
fi

if [ -f /usr/bin/vware-user ]; then
    vmware-user
fi

if [ -f /usr/bin/picom ]; then
    picom --backend xrender &
fi

exec i3
