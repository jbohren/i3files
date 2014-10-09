#!/usr/bin/env bash

INFO="[i3 bootstrap]"
i3_VERSION_MIN="4.6"

# Bootstrap an i3 install
i3_FOUND="$(command -v i3)"

verlte() {
  [ "$1" != "$(echo -e '$1\n$2' | sort -Vr | head -n1)" ]
}

verlt() {
  [ "$1" = "$2" ] && return 1 || verlte $1 $2
}

# Check if i3 is installed
if [ -n "$i3_FOUND" ] ; then 
  # Check what version is installed
  i3_VERSION="$(i3 --version | sed 's/^.*\([0-9]\.[0-9]\).*$/\1/g')"
fi

if verlt "$i3_VERSION" "$i3_VERSION_MIN" ; then
  echo "$INFO Found i3 version $i3_VERSION < $i3_VERSION_MIN"
fi

if [ -z "$i3_FOUND" ] || verlt "$i3_VERSION" "$i3_VERSION_MIN" ; then 
  echo "$INFO Installing i3 version $i3_VERSION_MIN ..."
  echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
  apt-get update
  apt-get --allow-unauthenticated install sur5r-keyring
  apt-get update
  apt-get install i3 nitrogen dmenu libjson-perl
fi

i3_VERSION="$(i3 --version | sed 's/^.*\([0-9]\.[0-9]\).*$/\1/g')"
echo "$INFO i3 version $i3_VERSION is installed"
