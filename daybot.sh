#!/bin/bash
#
# Make the script executable and add it as a cronjob owned by a bot user.
# Cron config something like:
# 0 0 * * * /repos/gitlogchat/daybot.sh
git commit --allow-empty -m "Hooray it's a new day: `date +"%A %B %d %Y"`" > /dev/null
