#!/bin/bash
watch -n 1 --no-title -d "git --no-pager blame chat.log | sed 's/[+-]\{1\}[0-9]\{4\}[ ]*[0-9]*)[ ]//;s/^[[:alnum:]]*[ ]*(//'"
