#!/bin/bash

fname=$(basename "$1" .tgz)

zname="cleaned_${fname}"

mktemp -d

tar -zxf "$1" -C /tmp/tmp.*

cd /tmp/tmp.*/"$fname"

grep -lr "DELETE ME!" | xargs rm

tar -czf "$zname".tgz file_*

mv "$zname".tgz ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning
