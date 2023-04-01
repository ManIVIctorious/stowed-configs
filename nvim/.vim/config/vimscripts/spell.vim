"Spell checking (:h spell)
"Enable spell checking in GUI-Mode
 if has("gui_running") | set spell | else | set nospell | endif
"Set spell files and accepted languages (:h spell-quickstart)
 set spelllang=en_gb,de_at
 set spellfile=~/.vim/spell/en.utf-8.add,~/.vim/spell/de.utf-8.add
