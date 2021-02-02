#!/usr/bin/bash

string="$(zenity --entry)"

if [ -z "$string" ]
then
    exit 0
fi

if [[ "$string" == *"{}"* ]]
then
    executefirst="${string%\{\}*}"
    executelast="${string#*\{\}}"
else
    executefirst="${string}"
    executelast=""
fi

firstfile="$1"

if [ -d "$firstfile" ]
then
    path="$firstfile"
else
    path="${firstfile%/*}"
fi

cd "$path"

execution="$($executefirst "$@" "$executelast")"

##DEBUG
#echo "--------------------------------------------------------"
#echo -e "\tstring\t\t$string"
#echo -e "\texecutefirst\t$executefirst"
#echo -e "\texecutelast\t$executelast"
#echo -e "\tfirstfile\t$firstfile"
#echo -e "\texecutedstring\t$executefirst$firstfile$executelast"
#echo -e "\tpath\t\t$path"
#echo -e "\texecution\t$execution"
#echo "--------------------------------------------------------"
##GUBED

if [ -z "$execution" ]
then
    exit 0
fi

zenity --info --text="$(echo "$execution")"
