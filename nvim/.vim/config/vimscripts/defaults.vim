"Types of Vim Options
""There are three types of options in Vim:
 "All of their values can be queried with "set <name>?"
""Boolean options:
 "         set with "<name>"
 "       unset with "no<name>"
 "      toggle with "<name>!"
""String and numeric options:
 "         set with "<name>=<value>"
""Array options:
 "         set with "<name>=<value>"
 "   add value with "<name>+=<value>"
 "remove value with "<name>-=<value>"

set nocompatible            "disable vi compatible mode
syntax on                   "enable Syntax Highlighting
filetype plugin on          "enable filetype detection

""An X11-aware Vim provides the two selection registers PRIMARY ("*) and CLIPBOARD ("+)
 "Most applications provide their current selection via PRIMARY "*
 "and use CLIPBOARD "+ for cut/copy/paste operations
  set clipboard=unnamedplus  "use CLIPBOARD register "+ for yank/delete/change/put operations


"Settings
  set wrap           "wrap line at end of window
  set number         "display line numbers
  set linebreak      "wrap whole words
  set splitright     "open new vertical splits on the right
  set splitbelow     "open new horizontal splits below
  set showcmd        "display incomplete commands (bottom right)
  set hidden         "don't show an error message when switching from a modified buffer
  set wildmenu       "displays auto-completed command list on pressing wildchar (i.e. tab)
 "set wildignorecase "case insensitive completion in wildmenu
  set visualbell     "flash the buffer when encountering an error (e.g. invalid movement)
 "set scrolloff=999  "keep cursor on the middle line as long as possible (default: so=0)


 "Search (:h /, magic, pattern-overview)
  set ignorecase     "ignore case when using a search pattern
  set smartcase      "caps sensitive when upper-case in search pattern
  set incsearch      "Incremental search -> search as you type

 "Settings for tabulators and indentation (:h tabstop, autoindent)
  set tabstop=4      "number of spaces a "\t" in the text counts for
  set shiftwidth=4   "number of spaces used for each step of indent (>>,<<,etc.)
  set smarttab       "backspace removes up to <shiftwidth> spaces at start of line
  set expandtab      "expand tabs to spaces
  set autoindent     "copy indent from current line when starting a new line
  set smartindent    "smarter indentation in case of C-like source-code
  set breakindent    "on line wrap the "display-lines" are indented too
  "set cursorline    "highlight the current line
  "set cursorcolumn  "highlight the current column

 "Define how automatic formatting is done (:h 'formatoptions', fo-table)
  set formatoptions=tcrqj

 "Text folding (:h folding, fold-methods, fold-commands)
  set foldmethod=marker   "Set foldmethod to marker (using foldmarker and commentstring)
  set foldcolumn=0        "Show folding column of width <set foldcolumn?> on the left

 "Display as much as possible of the last line in a window (:h 'display')
  set display+=truncate

 "Increase maximum number of tabs
  set tabpagemax=100

 "Set number formats besides decimal, bin (0b), hex (0x), alpha [a-zA-Z]
  set nrformats=bin,hex,alpha

 "List of sideways moving keys allowed to traverse line breaks
  set whichwrap=b,s,[,]

 "Enable mouse usage (:h mouse)
  set mouse=a        "enable mouse selection in all modes as well as terminal
  set mousefocus     "focus follows mouse in split-view

 "Autocompletion settings (:h ins-completion, 'completeopt')
 "Just show completion popup instead of directly inserting the first match
  set completeopt+=longest

 "Show invisibles (e.g. tabs, EOL, etc.) (:h 'list') and provide a list of
 " displayed hidden characters and their accompanying symbols (:h 'listchars')
  set list
  set listchars =tab:--→
  set listchars+=nbsp:␣
  set listchars+=trail:•
  set listchars+=extends:⟩
  set listchars+=precedes:⟨
  "set listchars+=eol:↲
