#!/usr/bin/bash

while getopts "i:o:e:p:s:" opt; do
  case $opt in
    i)    infile_options="${OPTARG}";;
    o)   outfile_options="${OPTARG}";;
    e) outfile_extension="${OPTARG}";;
    p)            prefix="${OPTARG}";;
    s)            suffix="${OPTARG}";;
  esac
done
shift $(( OPTIND - 1 ))

for infile in "$@"; do
# set output file name according to
#   <prefix><infilename><suffix>.<outfile_extension>
# if no outfile extension is provided set it to the infile extension
  if [ -z ${outfile_extension} ]; then outfile_extension="${infile##*.}"; fi
  outfile="${prefix}${infile%.*}${suffix}.${outfile_extension}"

  convert ${infile_options} "${infile}" ${outfile_options} "${outfile}"
done
