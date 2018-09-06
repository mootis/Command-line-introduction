#!/bin/bash
archive=$1
dir=$2 #these are so people can read the code below with better ease

here=$(pwd)

# Extracts contents of the tar archive to a specified directory
 tar -xzf $1 -C $2

 cd $dir

# This one seems to work kinda - lists all files containing string 'DELETE ME!'
# Adding the stuff after the first ';' is what deletes everything
 find . -type f -exec fgrep -l 'DELETE ME!' {} \; -exec rm {} +

 # Used this to test that if files were actually deleted (they didn't show up, so yay! :D )
 #find . -type f -exec fgrep -l 'DELETE ME!' {} \; -exec ls {} +

# Trimmed version of above command with remove - Doesn't work, but kept in 'cause it might help in future projects
# rm `grep -l 'DELETE ME!' {} \;`

archive_name=$(basename $archive ".tgz")

# Creating new compressed tar
# tar -zcf cleaned_little_dir.tgz $here
 tar -zcf cleaned_$archive $archive_name

 mv cleaned_$archive $here

 #Ethan and Nick Pluck helped greatly with letting me know why it wasn't working before and ideas on how to fix it
