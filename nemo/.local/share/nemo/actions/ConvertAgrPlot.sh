#!/usr/bin/bash

fileext="$1"
cd "$2"
shift
shift

for agrfile in "$@"; do
  xmgrace -hdevice "${fileext}" -hardcopy "${agrfile}"
done
