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

## Show Status Info

Show basic information using only stock OpenBSD tools. Something like Conky, where the information is refreshed periodically. Useful: battery, volume, and wireless information, maybe others as well.

Note 1: I tried the following. It didn't work, though. The first time the window appeared, it was swallowed properly, but subsequent times the xmessage window popped out on its own. I'm still looking for other ideas to make this work, either by coercing xmessage to stay swallowed, or some other method.

    *FvwmButtons(Swallow xmessage 'Exec while true; do apm -b | xmessage -file - -buttons "" -timeout 2;done  &')

# BUGS

## xclock Core Dump

A file called xclock.core occasionally shows up in my home dir. What's the cause? And how to fix it?
