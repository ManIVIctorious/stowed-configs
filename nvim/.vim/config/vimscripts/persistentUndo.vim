"Add persistent undo and swapdir

 "define and create cach directories for undo and swap
  let vimCache = '$HOME/.cache/vim'
  "undodir
  let myUndoDir = expand(vimCache . '/undodir')
  if !isdirectory(myUndoDir)
    call mkdir(myUndoDir, "p")
  endif
  "swapdir
  let mySwapDir = expand(vimCache . '/swap/')
  if !isdirectory(mySwapDir)
    call mkdir(mySwapDir, "p")
  endif

 "keep undo history across sessions by storing it in a file
  let &undodir = myUndoDir
  set undofile
  set undolevels=10000  "maximum number of changes that can be undone
  set undoreload=10000  "maximum number lines to save for undo on a buffer reload

 "swap dir
  let &directory = mySwapDir
