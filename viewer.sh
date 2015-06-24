#!/bin/bash
watch -n 1 --no-title "git --no-pager blame chat.log | sed 's/.*(\([a-zA-Z ]*\) [0-9\-]*[ ]*\([:0-9]*\) [+\-]*[0-9]*[ ]\+[0-9]\+)[ ]*\(.*\)/\2 <\1> \3/' | sed 's/[ ]*>/>/'"
