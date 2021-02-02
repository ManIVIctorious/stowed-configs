#!/usr/bin/bash

while [ $# -gt 0 ]
do

file="$1"
filename="${file%.pdf}-compressed.pdf"

gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/printer -sOutputFile="$filename" "$file"

# The Quality-Levels are /screen (worst), /ebook (medium) and /printer (best)

shift
done
