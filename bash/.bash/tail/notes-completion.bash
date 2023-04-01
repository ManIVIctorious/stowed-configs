

# helper function for bash completion
_notes_completion () {
local JD=${journaldirectory:-${HOME}/.local/notes/}

  COMPREPLY=()
  curr="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts="$(ls ${JD})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${curr}) )

}
complete -F _notes_completion notes
