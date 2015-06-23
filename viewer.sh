#!/bin/bash
while true; do
  cat <( git --no-pager blame --date short chat.log | cut -f 1,2 -d ' ' --complement | sed -e 's/^[ ]*//' )
  sleep 1
done
