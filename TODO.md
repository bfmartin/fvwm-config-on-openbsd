# TODO

The following items are outstanding. Most are feasible, some may not be.

In no particular order:

## Better Docs

Better inline documentation for evaluating choices and what sections apply to which functionality.

## Volume Control Slider

Replace the eleven menu options with a volume control slider for better control and granularity.

## Switch Windows with Alt-Tab

Similar to other desktops. This page http://www.xteddy.org/fvwm/fvwmcookbookfaq.html#WC2 has a possible solution.

## Align Windows

Make the windows line up or snap when adjacent to other windows or the edge of a screen. The FVWM FAQ says how to accomplish this.

## System Wide Install

The install script installs the dot files into your home dir. If you're like me, your laptop is a single-user system and there's no need for individual personalisations.

Provide a second script to install to system locations.

This will make it easier to automate with admin tools like Puppet or Ansible and also declutter your home dir.

## Better Keyboard Support

Not much there now.

## Double Click on Window Title Bar

This should be maximise / unmaximise. Now it is raise / lower the window.

## Show Status Info

Show basic information using only stock OpenBSD tools. Something like Conky, where the information is refreshed periodically. Useful: battery, volume, and wireless information, maybe others as well.

## Lock Screen

There is a screen locker installed on the command menu (left mouse button), but there should be a lock screen after a period of inactivity. The screen blanks OK, but no lock.

# BUGS

## xclock Core Dump

A file called xclock.core occasionally shows up in my home dir, maybe from shutting down improperly. What's the cause?
