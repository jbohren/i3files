#!/usr/bin/env sh

# Generate the full config based on the hostname
if [ -e $I3DIR/configs/$HOST.cfg ]; then
  cat $I3DIR/base.cfg $I3DIR/configs/$HOST.cfg > $I3DIR/config
else
  cp $I3DIR/base.cfg > $I3DIR/config
fi

