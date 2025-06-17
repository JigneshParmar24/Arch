#!/bin/bash

# Name of your Polybar (must match the bar name in your config)
BAR_NAME="main"

# Check if Polybar is running
if pgrep -x polybar > /dev/null; then
    echo "Polybar is running. Stopping it..."
    killall -q polybar
else
    echo "Polybar is not running. Starting it..."
    polybar "$BAR_NAME" &
fi