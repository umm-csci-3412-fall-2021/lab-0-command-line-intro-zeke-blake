#!/bin/bash

mktemp -dp ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning

tar -zxvf $1 -C ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning/tmp.*

fname=$(basename $1 .tgz)

cd tmp.*/$fname

grep -lr "DELETE ME!" . | xargs rm

#for file in $(fgrep -l -r 'DELETE ME!' ../); do rm "$file"; done

zname="'cleaning_' + ${fname}"

tar -czvf $zname -C ~/Downloads/lab-0-command-line-intro-zeke-blake/cleaning


