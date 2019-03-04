PATH=/usr/X11R6/bin:/usr/local/bin:$PATH
export LC_CTYPE="en_US.UTF-8"

# remap the caps lock key to be another ctrl key
setxkbmap \
  -model pc105 \
  -layout us \
  -variant altgr-intl \
  -option compose:rctrl \
  -option ctrl:nocaps

# set extra dirs in fontpath, if any
if [ -d /usr/local/share/fonts ]; then
  for i in /usr/local/share/fonts/*; do
    xset fp+ $i
  done
  xset fp rehash
fi

xidle -timeout 600 &

# background
xsetroot -solid black

# programs to startup
xterm &
fvwm
