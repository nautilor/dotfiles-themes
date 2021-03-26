#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar dark -c $HOME/.config/polybar/config &
# polybar bottom_dark -c $HOME/.config/polybar/config &
