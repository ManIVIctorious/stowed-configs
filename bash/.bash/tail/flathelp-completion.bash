#!/usr/bin/bash

program="flathelp"
function _flathelp_completion {

# ${COMP_CWORD} is the index of the word to be completed

# previous word
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  COMPREPLY=()

# if previous word is the program: get first completion
  if [ "${prev}" = "${program}" ]; then
  # declare completion array and define options
    local opts=$( "${program}" subprograms )
    COMPREPLY=( $(compgen -W "${opts}" -- ${COMP_WORDS[$COMP_CWORD]}) )
  else

  # else get later completions
    case "${prev}" in

      appruntime)
        local opts=$( flatpak list --columns=runtime -- 2>/dev/null | sort -u )
        COMPREPLY=( $(compgen -W "${opts}" -- ${COMP_WORDS[$COMP_CWORD]}) )
        ;;

      apphistory | rollback)
        local opts=$( flatpak list --columns=app 2>/dev/null | sort -u )
        COMPREPLY=( $(compgen -W "${opts}" -- ${COMP_WORDS[$COMP_CWORD]}) )
        ;;

    esac

  fi

  # special case:
  # rollback needs a valid commit id of the given application
  if [ "${COMP_WORDS[1]}" = "rollback" -a "${COMP_CWORD}" -eq 3 ]; then
    local AppID="${COMP_WORDS[2]}"
    local opts=$( ${program} apphistory "${AppID}" | grep -i commit | awk '{print $2}' )
    COMPREPLY=( $(compgen -W "${opts}" -- ${COMP_WORDS[$COMP_CWORD]}) )
  fi

}
complete -F _flathelp_completion "${program}"

