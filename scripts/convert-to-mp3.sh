#!/bin/bash

convert () {
  echo "Converting $1"
  extension="${1##*.}"
  ffmpeg -nostdin -y -i "$1" -ab 320k -c:v copy "${1/%.$extension/.mp3}" &>/dev/null
}

find -E . -iregex '.*\.(ape|dsf|flac|m4a|mp4|ogg|opus|wav|wma|wv)' |
  while read file; do
    convert "$file"
    if [ "$1" = "-y" ]
    then
      rm -f "$file"
    fi; done
