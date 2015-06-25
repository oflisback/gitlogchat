#!/bin/bash

# Quick way to post to the chat while on the go
# Make the script executable and add it to your path
# Maybe also make an alias for it e.g. alias g=glc.sh
git commit --allow-empty -F <( echo "$@" ) > /dev/null
