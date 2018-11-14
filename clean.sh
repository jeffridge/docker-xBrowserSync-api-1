#!/bin/bash

if [ -f src-*.tar.gz ]; then
  rm src-*.tar.gz
fi

if [ -d src ]; then
  rm -r src
fi