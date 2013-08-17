#!/bin/sh

VENDOR=zte
DEVICE=elden

BASE=../../../vendor/zte/elden/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
  fi
cp -T /home/dan/android/junk/DSF_0.2.4/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
