#!/usr/bin/bash

for i in "$@"; do
    echo "$i"
done
# switch to path
path="$1"
cd "$path"
shift

# if a Makefile exists run the make command
if [ -f Makefile ]; then
    make all
else
# else iterate over all tex files and compile them via latexmk
  while [ $# -gt 0 ]; do
  # check if file matches pattern
    if [ "${1##*.}" = tex ]; then
      texfile="$1"
      latexmk -latexoption="-halt-on-error -synctex=1" -bibtex -pdf "${texfile}"
    fi
    shift
  done
fi
