#!/bin/bash

# Extract NthPrime.tgz > Specified directory - Uncompress then extract
# Blake guided our thinking here
 tar -xzf NthPrime.tgz -C $2

# Compile files to generate the binary

# Sets current directory to directory above that's passed in executable
 cd $2/NthPrime
 gcc -o NthPrime main.c nth_prime.h nth_prime.c 
# exec ./extract_and_compile.sh $1 $2 - This is an ex. of something NOT to do
 ./NthPrime $1

