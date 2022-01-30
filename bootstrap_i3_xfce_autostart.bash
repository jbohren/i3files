#!/usr/bin/env bash

touch "$HOME/.i3/configs/$HOSTNAME.cfg"

mkdir -p $HOME/.config/autostart

cat >$HOME/.config/autostart/i3.desktop <<EOT
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=i3
Comment=Tiling Window Manager
Exec=$HOME/.i3/i3.$(basename $(echo $SHELL))
OnlyShowIn=XFCE;
StartupNotify=false
Terminal=false
Hidden=false
EOT
