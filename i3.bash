#!/usr/bin/env bash

# Get the directory to this file
export I3DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

$I3DIR/scripts/genconfig.sh $HOSTNAME
$I3DIR/scripts/run_or_reload.sh
