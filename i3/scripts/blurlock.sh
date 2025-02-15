#!/bin/bash

# take screenshot
import -window root /tmp/screenshot.png

# blur it
convert /tmp/screenshot.png -blur 0x8 /tmp/screenshotblur.png
rm /tmp/screenshot.png

# suspend message display
pkill notify-osd

# lock the screen
i3lock -i /tmp/screenshotblur.png

# sleep 1 adds a small delay to prevent possible race conditions with suspend
# sleep 1
# exit 0

# resume message display
pkill notify-osd
