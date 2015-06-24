#!/bin/bash

# Example git blame line: 2d035f2c (Ola Flisbäck 2015-06-24 19:15:09 +0200 1) chat extravaganza
# Corresponding output: 19:15:09 <Ola Flisbäck> chat extravaganza

watch -n 1 --no-title "git blame chat.log | sed 's/.*(\([a-zA-Z ]*\) [0-9\-]*[ ]*\([:0-9]*\) [+\-]*[0-9]*[ ]\+[0-9]\+)[ ]*\(.*\)/\2 <\1> \3/' | sed 's/[ ]*>/>/'"
