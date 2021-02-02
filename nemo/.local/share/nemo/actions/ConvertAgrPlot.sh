#!/usr/bin/bash

fileextension="$1"
shift

cd "$1"
shift

while [ $# -gt 0 ]
do
    xmgrace -hdevice "$fileextension" -hardcopy "$1"
    shift
done
