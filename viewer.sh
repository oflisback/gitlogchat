#!/bin/bash

# Stretching the "one-line" concept a little, this script converts the git log output
# to a more conventional chat log output.

# tr -d '\n' to delete all newlines for easier sed manipulation
# sed -r 's/([.]*)/\1\n/' adds a single newline at the end of all text
# next expression locates author, timestamp and message and prints them reordered
# tail -n +6 is a hack to omit the initial commits which aren't log entries
# tail -n $(tput lines) limits the output to the available lines in the console
watch -n 1 --no-title "git log --reverse | tr -d '\n' | sed -r 's/([.]*)/\1\n/' | sed -r 's/commit [a-z0-9]{40}Author: /\n/g' | sed '/^\s*$/d' | sed -r 's/([[:alnum:] ]+) <.*([:0-9]{8}).*[+-]{1}[0-9]{4}[ ]+(.*)/\2 <\1> \3/' | tail -n +6 | tail -n $(tput lines)"
