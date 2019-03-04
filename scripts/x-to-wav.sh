#!/bin/bash

# todo: arg parsing
EXT=$1

find . -name *.$EXT | while read f; do
  < /dev/null ffmpeg -i "$f" "${f/$EXT/wav}"
done
