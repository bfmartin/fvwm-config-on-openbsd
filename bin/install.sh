#!/bin/sh

# this installs the configuration files for fvwm, xdm, and X
# into the user's home dir

# source of the files
DIR=dotfiles

# are we sure?
if [ $# -gt 0 -a "y$1" = 'y-y' ]; then

  # sure
  echo installing:
  echo install         $DIR/dot.fvwmrc    ~/.fvwmrc
       install         $DIR/dot.fvwmrc    ~/.fvwmrc
  echo install         $DIR/dot.Xdefaults ~/.Xdefaults
       install         $DIR/dot.Xdefaults ~/.Xdefaults
  echo install -m 0755 $DIR/dot.xsession  ~/.xsession
       install -m 0755 $DIR/dot.xsession  ~/.xsession

else

  # not sure
  cat <<EOT
Install configurations for FVWM and related programs.

This install script will happily overwrite several files in your home
directory. If this is what you want, run the install again like this:

  $0 -y

Or, you can install any or all of the files manually like this:

  install         $DIR/dot.fvwmrc    ~/.fvwmrc
  install         $DIR/dot.Xdefaults ~/.Xdefaults
  install -m 0755 $DIR/dot.xsession  ~/.xsession

Please notice the last install command sets the execute permission on
the file. Otherwise it won't work.
EOT

fi
