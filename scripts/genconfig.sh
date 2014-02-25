#!/usr/bin/env sh

# Generate the full config based on the hostname
cat $I3DIR/base.cfg $I3DIR/configs/$HOST.cfg > $I3DIR/config

