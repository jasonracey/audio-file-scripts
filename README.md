# audio-file-scripts
A set of scripts for working with audio files.

## Install required packages
```
$ brew install cuetools flac ffmpeg shntool
```

## ape-to-flac
Converts all ape files in the directory tree to flac using ffmpeg's default compression level. Also renames any \*.ape.cue files to \*.flac.cue.

#### Convert all ape to flac and keep source file:
```
$ ./ape-to-flac.sh
```
#### Convert all ape to flac and delete source file:
```
$ ./ape-to-flac.sh -y
```

## clean-cue.sh
Replaces all characters outside the ASCII character set with a question mark in all cue files in the directory tree.

#### Clean all cue files:
```
$ ./clean-cue.sh
```

## convert-to-mp3
Converts all matched files in the directory tree to 320K mp3.

#### Convert all matched files to mp3 and keep source file:
```
$ ./convert-to-mp3.sh
```

#### Convert all matched files to mp3 and delete source file:
```
$ ./convert-to-mp3.sh -y
```

## download-playlist-files.sh

## iso-to-dsf.sh

## remove-junk.sh

## split-flac.sh

## x-to-flac.sh

## x-to-wav.sh
