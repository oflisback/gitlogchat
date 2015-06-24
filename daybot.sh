#!/bin/bash
#
# Make the script executable and add it as a cronjob owned by a bot user.
# Cron config something like:
#
# 0 0 * * * /repos/blamechat/daybot.sh

d=`date +"%A %B %d %Y"`
echo "Hooray it's a new day: $d" >> chat.log
git commit -a -F <( echo "$d" )
