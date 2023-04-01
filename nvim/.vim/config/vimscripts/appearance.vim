"Set GUI appearance
 if has("gui_running")
   colorscheme solarized        "GUI colorscheme
   set background=light         "possible values for solarized: light/dark
   set guifont=Monospace\ 11    "to set interactively type 'set guifont=*' in gvim
   set columns=104              "set window geometry: width
   set lines=28                 "set window geometry: height
 endif

"Change cursor shape on mode switch:
  " 1 -> blinking block
  " 2 -> solid block
  " 3 -> blinking underscore
  " 4 -> solid underscore
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
  let &t_SI = "\<Esc>[5 q" "SI = INSERT mode
  let &t_SR = "\<Esc>[4 q" "SR = REPLACE mode
  let &t_EI = "\<Esc>[1 q" "EI = NORMAL mode (ELSE)

"Don't flush terminal after closing vim (:h terminal-info, terminal-options)
  set t_ti= t_te=

