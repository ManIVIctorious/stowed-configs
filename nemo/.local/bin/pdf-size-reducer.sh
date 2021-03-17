#!/usr/bin/sh

function MAN {
cat << EOF 1>&2

Synopsis:  ${0##*/} {-h}
                    {-q} <quality level>
                    {-Q} <quality string>
                    {-a} <append to filename>
                    < input files >

    The script takes the options [qQa] and a number of pdf files as input.
    Be aware that the options have to be placed before the input file paths!
    Then it converts the input pdf files according to the set quality string.
    Possible values for quality-level / quality string are:

        quality-level   quality-string
             1              /screen
             2              /ebook
             3              /printer
             4              /prepress
             5              /default

    The additional -a <append to filename> flag, defaulting to "-reduced" defines
    the name of the output files. E.g. a file named test.pdf gets converted to
    a file named test-reduced.pdf.
EOF
}
export -f MAN
for i in $@; do if [[ $i == '-h' ]]; then MAN; exit 0; fi; done
if [ $# -eq 0 ]; then MAN; exit 0; fi

# set option values
while getopts "hHq:Q:a:" opt; do
  case $opt in
    h|H) MAN; exit 0;;
    q)   quallevel="${OPTARG}";;
    Q)     quality="${OPTARG}";;
    a)      append="${OPTARG}";;
  esac
done
shift $(( OPTIND - 1 ))

# convert qualitylevel to quality
if [ -n "${quallevel}" ]; then
  if [ "${quallevel}" -eq 1 ]; then quality="/screen"  ; fi
  if [ "${quallevel}" -eq 2 ]; then quality="/ebook"   ; fi
  if [ "${quallevel}" -eq 3 ]; then quality="/printer" ; fi
  if [ "${quallevel}" -eq 4 ]; then quality="/prepress"; fi
  if [ "${quallevel}" -eq 5 ]; then quality="/default" ; fi
fi

# if not specified, set default values
# default quality /printer
quality=${quality:-"/printer"}
# default append e.g. test.pdf -> test-reduced.pdf
append=${append:-"-reduced"}


for inputfile in "$@"; do

  gs  -q -dNOPAUSE -dBATCH -dSAFER \
      -sDEVICE=pdfwrite \
      -dPDFSETTINGS="${quality}" \
      -dEmbedAllFonts=true \
      -dSubsetFonts=true \
      -sOutputFile="${inputfile%.pdf}${append}.pdf" \
      "${inputfile}"

done
