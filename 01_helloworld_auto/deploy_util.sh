#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo 1>&2 "Usage: $0 APP_IMAGE_VERSION"
  exit 3
fi

set -x

V=$1

cp /home/centos/src/catalog/bluedata_image_tutorials/01_helloworld_auto/deliverables/bdcatalog-centos7-bluedata-helloworld-${V}.bin /srv/bluedata/catalog/bdcatalog-centos7-bluedata-helloworld-${V}.bin
chgrp apache /srv/bluedata/catalog/bdcatalog-centos7-bluedata-helloworld-${V}.bin
chmod ug+rx /srv/bluedata/catalog/bdcatalog-centos7-bluedata-helloworld-${V}.bin
