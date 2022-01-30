#!/usr/bin/env bash

# Run this script with sudo

# This is mostly from:
# http://feeblenerd.blogspot.com/2015/11/pretty-i3-with-xfce.html

add-apt-repository -y ppa:aacebedo/libi3ipc-glib
add-apt-repository -y ppa:aacebedo/xfce4-i3-workspaces-plugin

apt-get install -y libi3ipc-glib xfce4-i3-workspaces-plugin

