#!/bin/bash

# cd ..

# Extracts contents of the tar archive to a specified directory
 tar -xzf $1 -C $2

# unsure of any deeper directory needed here
 cd $2

# find . -type f 'DELETE ME!' -exec echo rm -f {} \;

# This one seems to work kinda - lists all files containing string 'DELETE ME!'
 find . -type f -exec fgrep -l 'DELETE ME!' {} \; -exec rm {} +

 # Used this to test that if files were actually deleted (they didn't show up, so yay! :D )
 #find . -type f -exec fgrep -l 'DELETE ME!' {} \; -exec ls {} +

# Trimmed version of above command with remove - Doesn't work, but kept in 'cause it might help in the future
# rm `grep -l 'DELETE ME!' {} \;`

#Enter scratch directory
here=$(pwd)
cd $SCRATCH

# Creating new compressed tar
 tar -zcf cleaned_little_dir.tgz $(pwd)

# Moving tar file out of scratch
 mv /cleaned_little_dir.tgz /cleaning
