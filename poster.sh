#!/bin/bash

# Blocking poster script, reads lines and posts
# to the chat

while true; do
    read s
    echo $s >> chat.log
    git commit -a -m "$s" > /dev/null
done
