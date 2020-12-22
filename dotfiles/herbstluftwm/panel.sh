#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on each moniitor, using default config location
# ~/.config/polybar/config
TRAY_POS=right
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload bottom &
    unset TRAY_POS
done
