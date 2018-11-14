#!/bin/bash

VERSION=1.1.6

# ::: Download latest release :::

if [ ! -f src-$VERSION.tar.gz ]; then
  wget -O src-$VERSION.tar.gz --content-disposition  https://github.com/xBrowserSync/API/archive/v$VERSION.tar.gz  
fi

if [ -d src ]; then
  rm -r src
fi

mkdir src
tar -xzf ./src-$VERSION.tar.gz --strip 1 --directory ./src

# ::: Build official docker image :::

pushd ./src
docker build -t xbrowsersync/api .
popd

# ::: Build custom docker image :::

docker build -t xbrowsersync/api:custom .
