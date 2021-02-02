#!/usr/bin/bash

fileextension="$1"
shift

for i in "$@"
do
    inputfile="$i"
    filename=${inputfile%.*}
    iat --iso --input="${inputfile}" --output="${filename}.${fileextension}"

#echo -e "DEBUG"
#echo -e "-------------------------------------------------------"
#echo -e "fileextension   $fileextension"
#echo -e "inputfile       $inputfile"
#echo -e "filename        $filename"
#echo -e "-------------------------------------------------------"
#echo -e "GUBED"

done
