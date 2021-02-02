#!/usr/bin/bash

compiler="$1"
shift

while [ $# -gt 0 ]
do
    inputfile="$1"
    inputfilename=${inputfile%.tex}
    path="${inputfile%/*}"
    cd "$path"
    
    $compiler    "$inputfilename"
    biber        "$inputfilename"
    $compiler    "$inputfilename"

    shift
done
