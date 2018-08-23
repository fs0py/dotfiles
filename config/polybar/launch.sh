#!/usr/bin/env bash

# terminate all running polybar
killall -q polybar

# wait until polybar has been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# launch polybar
polybar -c=$HOME/.config/polybar/config bottom &

# all done :)
