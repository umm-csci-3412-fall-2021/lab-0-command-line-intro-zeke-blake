#!/bin/bash

#Stores the given argument directory .tgz
fname=$(basename "$1" .tgz)

#Stores the given argument directory with "cleaned_" prefix
zname="cleaned_${fname}"

#Stores the temporary directory
TMPDIR=$(mktemp -d)

#Stores the current working directory (in this case ../cleaning)
here=$(pwd)

#Uncompresses and extracts contents of given argument directory in temporary directory
tar -zxf "$1" -C "$TMPDIR"

#Routes to unzipped/uncompressed argument directory in temporary directory
cd "$TMPDIR"/"$fname" || exit

#Finds and removes all files in uncompressed argument directory with "DELETE ME!" line
grep -lr "DELETE ME!" | xargs rm

#Routes to previous directory
cd ..

#Recompresses new argument directory with "cleaned_" prefix and .tgz suffix
tar -czf "$zname".tgz "$fname"

#Moves the .tgz file to the stored directory (../cleaning)
mv "$zname".tgz "$here"
