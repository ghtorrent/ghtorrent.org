#!/usr/bin/env bash

ssh dutihr cat mirror/*/log.txt |grep APIClient|grep -v WARN |perl -lape
's/\[([T0-9-:.]*).*\] DEBUG.*\[([0-9.]*)\].*Total: ([0-9]*) ms/$1 $2 $3/'|cut
-f2,3,4 -d' '|ruby -ne 'BEGIN{require "time"}; t,i,d=$_.split(/ /); print
Time.parse(t).to_i," ", i, " ", d;'|grep -v "#" >foo

echo "ts ip ms" > data.txt
cat foo > data.txt
R --no-save < api-stats.R
cd ..
jekyll

