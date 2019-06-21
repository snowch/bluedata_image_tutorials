#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo 1>&2 "Usage: $0 BIN_FILEPATH"
  exit 3
fi

BIN_FILEPATH=$1
BIN_FILENAME=$(basename $BIN_FILEPATH)

set -x

cp $BIN_FILEPATH /srv/bluedata/catalog/$BIN_FILENAME
chgrp apache /srv/bluedata/catalog/$BIN_FILENAME
chmod ug+rx /srv/bluedata/catalog/$BIN_FILENAME
