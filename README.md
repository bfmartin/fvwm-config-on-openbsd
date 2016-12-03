# FVWM config on OpenBSD

## Intro

This is an attempt at a nice desktop environment using stock OpenBSD apps.

After finally getting a laptop that OpenBSD supports, I wanted a good desktop without installing a large window manager and dozens of its prerequisite packages. Plus I prefer the simplicity and correctness of what this OS provides. There's no reason to go elsewhere.

## Features

* Clean, low-clutter desktop.

* Information displays in the lower right corner.

* Icons for minimised windows in the lower left corner.

* Mouse menus:

  * Left button: Commands, log out, volume, lock screen, reboot, etc.

  * Middle button: Window Operations.

  * Right button: Window List.

* Works without installing extra software packages or ports.

## Requirements

OpenBSD 6.0 and its bundled FVWM. This was developed on OpenBSD/amd64 6.0 and FVWM version 2.2.5. Other versions may work as well.

No additional software beyond the base installation is required. Though see the Install section for suggestions.

## Install

### Window Manager

Run:

~~~
./bin/install.sh
~~~

Or manually:

Copy the "dot" files in your home directory, and remove the "dot" from the filename. Note that the .xsession file needs the execute mode set. Like this:

~~~
install         dotfiles/dot.fvwmrc    ~/.fvwmrc
install         dotfiles/dot.Xdefaults ~/.Xdefaults
install -m 0755 dotfiles/dot.xsession  ~/.xsession
~~~

### Reboot and Shutdown (Optional)

For the shutdown and reboot commands to work, your account needs password-less root privileges using doas. Something like this in the /etc/doas.conf file should work:

~~~
permit nopass :wheel as root cmd /sbin/reboot
permit nopass :wheel as root cmd /sbin/shutdown args -hp now
~~~

Since the last matching rule takes precedence, put these at the bottom of the file.

### Other Packages (Optional)

Make your desktop more complete with any or all of the tools you want:

* web browser
* file manager
* network connection manager
* photo manager
* image editing
* audio and video player
* password manager
* screen capture
* screen saver
* conky
* whatever else you want


## Thanks

Thanks to the many people who provided docs and example configurations.

Your feedback and ideas are welcome.
