#!/bin/bash

# This script converts the git log output to a more conventional chat log output.
# cut -d' ' --complement -f 1,2,3,5,6 removes the columns listed from the output
# tail -n +7 is a hack to omit the initial commits which aren't log entries
# tail -n $(tput lines) limits the output to the available lines in the console
watch -n 1 --no-title "git log --reverse --pretty=format:'%cd <%an> %s' | cut -d' ' --complement -f 1,2,3,5,6 | tail -n +7 | tail -n $(tput lines)"
