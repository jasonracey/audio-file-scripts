#! /bin/sh

clean () {
  echo "Cleaning $1"
  perl -i.bak -pe 's/[^[:ascii:]]/?/g' "$1"
}

find . -iname '*.cue' |
  while read file; do
    clean "$file"
  done
