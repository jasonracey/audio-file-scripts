#! /bin/sh

find . -name '*.iso' -exec sh -c 'cp -n sacd_extract "$(dirname "${1}")"' _ {} \;

find . -name '*.iso' -execdir sh -c './sacd_extract -s -i"$1"' _ {} \;