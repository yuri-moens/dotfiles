#!/bin/bash
#
# $HOME/bin/lock.sh
#
# Requires i3lock, scrot and imagemagick
# Arch packages: i3lock, scrot, imagemagick (AUR)

scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x7 /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png
