#!/usr/bin/env bash

# Get the directory to this file
I3DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

source $I3DIR/scripts/genconfig.sh
source $I3DIR/scripts/run_or_reload.sh
