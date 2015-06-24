#!/bin/bash

while true; do
    read s
    echo $s >> chat.log
    git commit -a -m "$s" > /dev/null
done
