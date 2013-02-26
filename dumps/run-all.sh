#!/bin/bash

#./ght-periodic-dump -f '2012-01-31 00:00' -t '2012-03-31 00:00'
#./update-downloads.sh

#./ght-periodic-dump -f '2012-03-31 00:00' -t '2012-05-31 00:00'
#./update-downloads.sh

#./ght-periodic-dump -f '2012-05-31 00:00' -t '2012-07-31 00:00'
#./update-downloads.sh

./ght-periodic-dump -f '2012-07-31 00:00' -t '2012-09-30 00:00'
./update-downloads.sh

./ght-periodic-dump -f '2012-09-30 00:00' -t '2012-11-30 00:00'
./update-downloads.sh

./ght-periodic-dump -f '2012-11-30 00:00' -t '2013-01-30 00:00'
./update-downloads.sh
