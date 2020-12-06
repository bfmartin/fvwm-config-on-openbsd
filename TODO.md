# TODO

The following items are outstanding. Some are feasible, some are likely not.

In no particular order:

## Better Docs

Better inline documentation for evaluating choices and what sections apply to which functionality.

## Volume Control Slider

Replace the eleven menu options with a volume control slider for better control and granularity. This is not high on my priority list as the hardware buttons work fine on my laptop

## System Wide Install

The install script installs the dot files into your home dir. If you're like me, your laptop is a single-user system and there's no need for individual personalisations.

Provide a second script to install to system locations.

This will make it easier to automate with admin tools like Puppet or Ansible and also declutter your home dir.

## Better Keyboard Support

Not much there now.

# BUGS

## xclock Core Dump

A file called xclock.core occasionally shows up in my home dir. What's the cause? And how to fix it?

Note 1: This happens during development when selecting "Restart fvwm". That kills the xclock process and presumably causes the core dump (though no core dump for xload). This doesn't appear to be a bug with this init file so it will be removed from the bug list.
