#!/usr/bin/env bash

# Get the directory to this file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

# Generate the full config based on the hostname
cat $DIR/config.base $DIR/config.$HOSTNAME > $DIR/config

# Check if i3 is already running
if ps aux | grep "i3" > /dev/null; then
  # Just restart it to use the new config
  i3 restart
else
  # Replace other _lesser_ WMs
  if ps aux | grep "xfwm4" > /dev/null; then
    killall xfwm4
  fi
  # Start i3
  i3 &
fi
