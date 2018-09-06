#!/bin/bash
archive=$1
directory=$2 #these are so people can read the code below with better ease

# Extracts contents of the tar archive to a specified directory
 tar -xzf $1 -C $2

 here=$(pwd)

 # unsure of any deeper directory needed here
 cd $2

# find . -type f 'DELETE ME!' -exec echo rm -f {} \;

# This one seems to work kinda - lists all files containing string 'DELETE ME!'
# Adding the stuff after the first ';' is what deletes everything
 find . -type f -exec fgrep -l 'DELETE ME!' {} \; -exec rm {} +

 # Used this to test that if files were actually deleted (they didn't show up, so yay! :D )
 #find . -type f -exec fgrep -l 'DELETE ME!' {} \; -exec ls {} +

# Trimmed version of above command with remove - Doesn't work, but kept in 'cause it might help in future projects
# rm `grep -l 'DELETE ME!' {} \;`



# Creating new compressed tar
# tar -zcf cleaned_little_dir.tgz $here
 tar -zcf cleaned_$1 $here

# "Moving" tar file out of scratch
#  rm -f ./

