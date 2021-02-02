#!/usr/bin/bash

if [ ! -d ~/.local/share/fonts ]
then
    mkdir ~/.local/share/fonts
fi

cp "$@" ~/.local/share/fonts/
