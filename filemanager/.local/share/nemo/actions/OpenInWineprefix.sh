#!/usr/bin/bash

# select wine prefix directory via zenity directory chooser dialogue
defaultprefixdirectory="${HOME}/.wein/"
prefixdir="$(zenity --file-selection --directory --filename=${defaultprefixdirectory})"

# run wine in prefix directory
WINEPREFIX="$prefixdir" wine "$1"
