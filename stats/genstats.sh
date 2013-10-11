#!/usr/bin/env bash

scp ./extract-stats.sh dutihr:~
ssh dutihr /home/gousiosg/extract-stats.sh > foo

echo "ts ip ms" > data.txt
cat foo >> data.txt
R --no-save < api-stats.R
cd ..
jekyll

