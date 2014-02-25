#!/usr/bin/env sh

# Check if i3 is already running
if pidof i3 >/dev/null; then
  if [ -n "$1" ]; then
    i3 $1
  else
    # Just restart it to use the new config
    i3 reload
  fi
else
  # Replace other _lesser_ WMs
  if ps aux | grep "xfwm4" > /dev/null; then
    killall xfwm4
  fi
  # Start i3
  i3 &
fi
