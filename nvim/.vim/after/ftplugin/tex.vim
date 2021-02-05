"LaTeX file specific settings
setlocal wrap           "wrap line at end of window
setlocal linebreak      "wrap whole words
setlocal tabstop=2      "number of spaces a "\t" in the text acounts for
setlocal shiftwidth=2   "number of spaces used for indentation steps
setlocal commentstring=%%s
setlocal expandtab
setlocal breakindent    "on line wrap the "display-lines" are indented too
setlocal dictionary+=~/.vim/words/tex.dict

"Display as much as possible of the last line in a window (:h 'display')
setlocal display+=truncate

"add file type expansion
setlocal suffixesadd=.tex,.sty,.bib
