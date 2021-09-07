#!/bin/bash

fname=$(basename "$1" .tgz)

zname="cleaned_${fname}"

#Stores the temporary directory
TMPDIR=$(mktemp -d)

#Stores the current working directory (in this case ../cleaning)
here=$(pwd)

tar -zxf "$1" -C "$TMPDIR"

cd "$TMPDIR"/"$fname" || exit

grep -lr "DELETE ME!" | xargs rm

cd ..

tar -czf "$zname".tgz "$fname"

#Moves the .tgz file to the stored directory
mv "$zname".tgz "$here"
