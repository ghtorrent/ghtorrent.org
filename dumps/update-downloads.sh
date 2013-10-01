#!/usr/bin/env bash
./index.rb downloads/ > torrents 
cd ghtorrent.org
cat downloads.md | sed -n '/### Available/q;p' > dl.tmp
echo "### Available Downloads" >> dl.tmp
cat dl.tmp ../torrents > downloads.md
git stash
git pull
git stash pop
git commit -a -m "Dump `date +'%Y-%m-%d'`"
git push
rm dl.tmp
cd -
rm torrents
