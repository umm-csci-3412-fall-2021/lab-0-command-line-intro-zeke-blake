#!/bin/bash

mktemp -dp ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning

tar -zxvf $1 -C ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning/tmp.*

fname=$(basename $1 .tgz)

cd tmp.*/$fname

rm -f 'find . | xargs grep -l "DELETE ME!"'

TAR -czvf ("cleaning_" + $fname) ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning


