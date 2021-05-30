#!/usr/bin/bash

# if a path is provided (-p) switch there
while getopts "p:" opt; do
  case $opt in
    p)  cd "${OPTARG}";;
  esac
done
shift $(( OPTIND - 1 ))

# create dialogue to enter command and store its output in cmd
cmd="$(zenity --entry --title ZenityExecute)"

# do nothing if no command is provided
if [ -z "${cmd}" ]; then exit 0; fi

# if a {} is present in the cmd string substitute it
# with the command arguments, else append the arguments
if [[ "${cmd}" == *"{}"* ]]; then
  cmd=$(sed 's/{}/$@/' <<< "${cmd}")
else
  cmd="${cmd} '$@'"
fi

answer="$(eval ${cmd})"

# if the command returns some answer print it in an info box
if [ -z "${answer}" ]; then exit 0; fi
zenity --info --text="$(echo "${answer}")"
