#!/usr/bin/bash

routine="$1"
executable="$2"
prefix="$(zenity --file-selection --directory --filename=/home/$USER/.wein/)"

WINEPREFIX="$prefix" "$routine" "$executable"

##Debug-Variablen
#echo "----------------------------------------------------------------"
#echo "DEBUG"
#echo -e "\troutine    = "$routine
#echo -e "\texecutable = "$executable
#echo -e "\twineprefix = "$prefix
#echo "GUBED"
#echo "----------------------------------------------------------------"
