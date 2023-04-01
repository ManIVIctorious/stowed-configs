
"Key-maps and key-remaps (:h key-mapping, map-overview)
 "fix Y behaviour
  nmap Y y$

 "stay in visual mode after using ">" or "<" for visual indentation
  vnoremap < <gv
  vnoremap > >gv

 "display next search item at the window centre
  nnoremap n nzzzv
  nnoremap N Nzzzv

 "faster buffer switching with  <C-p>, <C-n> and gb (bufferlist)
  nnoremap gb               :ls<CR>:b<Space>
  nnoremap <C-p>            :bp<CR>
  nnoremap <C-n>            :bn<CR>
  nnoremap <leader>#        :b#<CR>

"" "automatically close parentheses, quotes, etc. (:h i_CTRL-G_U)
"" "(single quotes interfere with words like e.g. don't)
""  inoremap <expr> " "\"\"\<c-g>U\<left>"
""  inoremap <expr> (   "()\<c-g>U\<left>"
""  inoremap <expr> [   "[]\<c-g>U\<left>"
""  inoremap <expr> {   "{}\<c-g>U\<left>"

 "use "<C>" as modifier to work on displayed lines instead of numbered lines
 "<C-^> and <C-$> are not really possible to type therefore, g^ and g$ have to be used
   noremap <C-Up>    gk
   noremap <C-k>     gk
   noremap <C-Down>  gj
   noremap <C-j>     gj
   noremap <C-Home>  g^
   noremap <C-End>   g$
  inoremap <C-Up>    <Esc>gka
  inoremap <C-Down>  <Esc>gja
  inoremap <C-Home>  <Esc>g^i
  inoremap <C-End>   <Esc>g$a

 "move between split-windows by hitting "alt+{arrow-keys}"
 "(unfortunately alt+{h,j,k,l} don't get sent to vim properly)
   noremap <leader>h      <C-w>h
   noremap <leader>j      <C-w>j
   noremap <leader>k      <C-w>k
   noremap <leader>l      <C-w>l
   noremap <M-Left>       <C-w>h
   noremap <M-Down>       <C-w>j
   noremap <M-Up>         <C-w>k
   noremap <M-Right>      <C-w>l

"Command Mappings
 "remove Blank Lines Command
  command! -range=% RBL :<line1>,<line2>g/^\s*$/d

"<leader> mappings
 "edit vimrc
  nnoremap <leader>e    :edit $MYVIMRC<CR>
 "switch cwd to the directory of the open buffer (:h filename-modifiers)
  nnoremap <leader>cd   :cd %:p:h<CR>:pwd<CR>
 "call :make
  nnoremap <leader>m    :make<CR>
 "copy whole content to clipboard
  nnoremap <leader>y    :%y+<CR>
 "substitute word under cursor in whole file or in range
  nnoremap <leader>s :%s/\<<C-r><C-w>\>/
  vnoremap <leader>s :s/\<<C-r><C-w>\>/
 "toggle spell checking
  nnoremap <leader>S :setlocal spell!<CR>
 "quit with <leader>q
  nnoremap <leader>q :q!<CR>
  nnoremap <leader>w :w<CR>
 "use |/_ to set the current window width/height widest/highest possible
  nnoremap <leader>\| <C-w>\|
  nnoremap <leader>_  <C-w>_

 "edit file in multiple columns
  noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>
 "evaluate expression with expression register
  nnoremap <leader>c 0yt=f=a<C-r>=<C-r>0<CR><Esc>
