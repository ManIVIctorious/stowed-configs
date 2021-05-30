#!/usr/bin/bash

fileextension="$1"
shift

for inputfile in "$@"; do
  ebook-convert "${inputfile}" "${inputfile%.*}.${fileextension}"
done
