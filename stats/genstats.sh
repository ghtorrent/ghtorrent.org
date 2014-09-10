#!/usr/bin/env bash

scp ./extract-stats.sh dutihr:~
ssh dutihr /home/gousiosg/extract-stats.sh > foo
echo "ts ip ms" > data.txt
cat foo >> data.txt

scp ./extract-events.sh dutihr:~
ssh dutihr /home/gousiosg/extract-events.sh |sed -e 's/^ \(.*\)$/\1/' > foo
echo "ts event" >events.txt
cat foo >> events.txt

R --no-save < api-stats.R

cd ..
jekyll build

