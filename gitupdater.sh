#!/bin/bash

clear

echo "
                 _       _
 _   _ _ __   __| | __ _| |_ ___ _ __
| | | | '_ \ / _' |/ _' | __/ _ | '__|
| |_| | |_) | (_| | (_| | ||  __| |
\__,_ | .__/ \__,_|\__,_|\__\___|_|
      |_|
"

MYDIR="~/GIT"

DIRS=`ls -l $MYDIR | egrep '^d' | awk '{print $9}'`

for DIR in $DIRS
do
  echo "[>] GIT " ${DIR}
  cd ${MYDIR}/${DIR}
  git pull | sed 's/Already up-to-date./OK/'
  # git archive HEAD --format=tar |gzip > utils.tgz
done
