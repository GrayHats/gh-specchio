#!/bin/bash

MYDIR="~/GIT"

DIRS=`ls -l $MYDIR | egrep '^d' | awk '{print $9}'`

for DIR in $DIRS
do
  echo "[>] GIT " ${DIR}
  cd ${MYDIR}/${DIR}
  git pull
done
