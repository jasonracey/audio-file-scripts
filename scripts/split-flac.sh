#! /bin/sh

# what are these files? they break us
find . -iname '* bis.cue' -print0 | xargs -0 rm -f

# create output dirs
find . -iname '*.cue' -execdir sh -c 'mkdir -p $(dirname "$1")/split' _ {} \;

# split source flac to multiple flacs in output dir
find . -iname '*.cue' -execdir sh -c 'shnsplit -O never -d $(dirname "$1")/split -f "$1" -o flac -t "%n-%t" "${1%.cue}.flac"' _ {} \;

# remove pregap files
find . -iname '*-pregap.flac' -print0 | xargs -0 rm -f
