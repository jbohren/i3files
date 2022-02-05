#!/usr/bin/env sh

# Disable the desktop
gconftool-2 --set /apps/nautilus/preferences/show_desktop --type boolean false
