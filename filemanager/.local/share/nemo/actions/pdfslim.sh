#!/usr/bin/bash

quality=$(zenity --list --column Quality screen ebook printer prepress default)

if [ -z "${quality}" ]; then exit; fi
pdf-size-reducer.sh -Q /${quality} -a "-compressed" $@
