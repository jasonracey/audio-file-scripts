#! /bin/sh

clean () {
  echo "Cleaning $1"

  # copy original file to .cue.bak
  # regex 1: replace all non-ascii characters with a question mark 
  # regex 2: remove all question marks from the start of each line 
  perl -i.bak -pe 's/[^[:ascii:]]/?/g;s/^\?{1,}//;' "$1"
}

find . -iname '*.cue' |
  while read file; do
    clean "$file"
  done