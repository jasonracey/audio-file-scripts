#!/bin/bash

files=$(curl -L -s $1)

for file in $files
do
    echo
    echo "Dowloading" $file
    curl -L -O $file
done