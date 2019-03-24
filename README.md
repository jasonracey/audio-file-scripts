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
Replaces all characters outside the ASCII character set with a question mark in all cue files in the directory tree. This is sometimes a prerequisite for for split-cue.

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
Downloads each file in the specified playlist to the current directory.
```
./download-playlist-files.sh https://archive.org/download/gd1970-04-03.144890.sbd.boswell.smith.sirmick.flac1644/gd1970-04-03.144890.sbd.boswell.smith.sirmick.flac1644_vbr.m3u
```

## iso-to-dsf.sh
Converts all iso files in the directory tree to dsf. Requires sacd_extract (included).
```
./iso-to-dsf.sh
```

## remove-junk.sh
Deletes all matched files in the directory tree.
```
./remove-junk.sh
```

## split-flac.sh
Splits all flac files in the directory tree as indicated in their corresponding cue file.
```
./split-flac.sh
```

## x-to-flac.sh
Converts all files in the directory tree matching the specified extension to flac.
```
./x-to-flac.sh dsf
```

## x-to-wav.sh
Converts all files in the directory tree matching the specified extension to wav.
```
./x-to-wav.sh wv
```
