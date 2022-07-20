#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
 # exec startx
#fi


# Added by Toolbox App
#export PATH="$PATH:/home/luca-miguel/.local/share/JetBrains/Toolbox/scripts"
