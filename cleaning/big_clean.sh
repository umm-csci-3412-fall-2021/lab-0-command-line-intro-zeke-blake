#!/bin/bash

fname=$(basename "$1" .tgz)

zname="cleaned_${fname}"

mktemp -d

tar -zxf "$1" -C /tmp/tmp.*

cd /tmp/tmp.*/"$fname" || exit

grep -lr "DELETE ME!" | xargs rm

cd ..

tar -czf "$zname".tgz "$fname"

mv "$zname".tgz ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning
