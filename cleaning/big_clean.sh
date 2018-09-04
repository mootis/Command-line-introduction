#!/bin/bash

# cd ..

# Extracts contents of the tar archive to a specified directory
 tar -xzf $1 -C $2

# unsure of any deeper directory needed here
 cd $2

# find . -type f 'DELETE ME!' -exec echo rm -f {} \;

# This one seems to work kinda - lists all files containing string 'DELETE ME!'
# find . -type f -exec fgrep -l 'DELETE ME!' {} \;
# Trimmed version of above command with remove - parsed incorrectly
 rm `grep -l 'DELETE ME!' {} \;`

# fgrep -l 'DELETE ME!' {} \;
