PATH=/usr/X11R6/bin:/usr/local/bin:$PATH

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
