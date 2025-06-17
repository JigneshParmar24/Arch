#!/bin/bash

source $HOME/.zshrc

# Kill all running polybar instances
killall -q polybar

# Wait until processes are fully killed
# while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar on all connected monitors
polybar main &