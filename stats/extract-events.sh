#!/usr/bin/env bash

doit() {
  grep Processed $1|
  perl -lape 's/\[([T0-9-:.]*)\ .*\].* event:\ ([^-]*)/$1 $2/'|
  cut -f2,3 -d' '|
  cut -f1,2,3 -d'-'|
  ruby -ne 'BEGIN{require "time"}; t,i,d=$_.split(/ /); print Time.parse(t).    to_i," ", i, " ", d;'
}

export -f doit

find mirror -type f|grep log.txt| parallel -j10 doit {}
