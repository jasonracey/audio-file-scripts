#!/bin/bash

remove_files_with_extension() {
    find . -iname $1 -print0 | xargs -0 rm -rf
}

declare -a extensions=(
    "*.accurip" 
    "*.bak" 
    "*.cue" 
    "*.db" 
    "*.ini" 
    "*.log" 
    "*.m3u" 
    "*.m3u8" 
    "*.md5" 
    "*.nfo" 
    "*.sfv" 
    "*.txt"
)

for ext in "${extensions[@]}"
do
   remove_files_with_extension "$ext"
done