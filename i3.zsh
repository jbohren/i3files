#!/usr/bin/env zsh

# Get the directory to this file
export I3DIR="$( cd "$( dirname "$0" )" && pwd)"

$I3DIR/scripts/genconfig.sh $HOST
$I3DIR/scripts/run_or_reload.sh
