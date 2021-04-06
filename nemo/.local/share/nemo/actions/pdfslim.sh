#!/usr/bin/bash

quality=$(zenity --list --column Quality screen ebook printer prepress default)

pdf-size-reducer.sh -Q /${quality} -a "-compressed" $@
