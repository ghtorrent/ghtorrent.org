#!/usr/bin/env bash

doit() {
  grep APIClient $1|
  grep -v WARN  |
  perl -lape 's/\[([T0-9-:.]*).*\] DEBUG.*\[([0-9.]*)\].*Total: ([0-9]*) ms/$1 $2 $3/'|
  cut -f2,3,4 -d' '|
  ruby -ne 'BEGIN{require "time"}; t,i,d=$_.split(/ /); print Time.parse(t).to_i," ", i, " ", d;'|
  grep -v "#"
}

export -f doit

find mirror -type f|grep log.txt| parallel -j10 doit {}
