"Markdown file specific settings
setlocal wrap           "wrap line at end of window
setlocal linebreak      "wrap whole words
setlocal tabstop=2      "number of spaces a "\t" in the text acounts for
setlocal shiftwidth=2   "number of spaces used for indentation steps
setlocal commentstring=<!--%s-->
setlocal expandtab
setlocal breakindent    "on line wrap the "display-lines" are indented too
setlocal nowrap

"Additional comment strings and add them on carriage return
setlocal comments+=fb:1.
setlocal comments+=fb:a.
setlocal comments+=b:[comment]\:\ #
setlocal formatoptions+=r

"Open markdown file in okular via <leader>f (:h map-local)
nnoremap <buffer> <leader>f :silent ! okular % >/dev/null 2>&1 & <CR>

"Display as much as possible of the last line in a window (:h 'display')
setlocal display+=truncate

setlocal suffixesadd=.md,.markdown
setlocal conceallevel=2

