#!/usr/bin/env sh

# Generate the full config based on the hostname
if [ -e $I3DIR/configs/$HOSTNAME.cfg ]; then
  cat $I3DIR/base.cfg $I3DIR/configs/$HOSTNAME > $I3DIR/config
else
  cp $I3DIR/base.cfg $I3DIR/config
fi

