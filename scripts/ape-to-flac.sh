#! /bin/sh

convert () {
  echo "Converting $1"
  ffmpeg -nostdin -y -i "$1" "${1%.ape}.flac" &>/dev/null
}

update_cue () {
  echo "Updating $1"
  perl -p -i -e "s/cue/flac/g" "$1"
}

find . -name '*.ape' |
  while read file; do
    convert "$file"
    if [ "$1" = "-y" ]
    then
      mv "$file" ~/.Trash
    fi; done

find . -name '*.ape.cue' |
  while read file; do
    update_cue "$file"
  done