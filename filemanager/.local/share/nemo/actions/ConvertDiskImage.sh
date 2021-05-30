#!/usr/bin/bash

fileextension="$1"
shift

for inputfile in "$@"; do
  filename="${inputfile%.*}"
  iat --iso --input="${inputfile}" --output="${filename}.${fileextension}"
done
