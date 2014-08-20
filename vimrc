" General {
  call pathogen#runtime_append_all_bundles()

  set nocompatible
  syntax on
  filetype plugin indent on

  set nobackup
  set noswapfile
  set clipboard+=unnamed
  set linebreak                   " when wrapping, uses chars listed in breakt
  set breakat=\ ^I!@*-+;:,./?     " when wrapping, break at these characters
" }

" Vim-UI {
  set nu
  set title
  set cursorline
  set cursorcolumn
 
  colorscheme torte 

  if has("gui_running")
    set guioptions-=T
    colorscheme torte
    set guifont=Monospace
  endif

" }

" Windows{
  nmap <leader>s :split<CR>
  nmap <leader>v :vsplit<CR>
  nmap <leader>o :only<CR>
" }

" Status Line {
  set laststatus=2
  set statusline=\ %f\
  set statusline+=\ [col:%2.(%c%)\ lin:%-7.(%l/%L%)]\ %P
" }

" Coding Rules {
  set tabstop=2           " real tabs will show 8 spaces
  set softtabstop=2       " how many spaces in a tabstop
  set shiftwidth=2        " sw: indent size
  set expandtab           " no tabs - space in place of tabstops
  set smarttab            " sta: space in place of tabs in a new line

  set autoindent          " ai: pre-req for si
  set copyindent          " ci: copy same character used in previous indent line
  set smartindent         " si: on
  set shiftround          " round indent to shiftwidth

  set backspace=indent,eol,start      " make backspace a more flexible

  set nrformats=alpha,octal,hex   " C-A/C-X: increment/decrement

  " Other type files
  au  FileType ruby setl sw=2 sts=2 et
  au  FileType python setl sw=4 sts=4 et
  au  FileType perl setl sw=5 sts=5 et
" }

" Plugin Settings {
  " NERDTreeToggle {
    silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
    nnoremap <silent> <C-f> :call FindInNERDTree()<CR> 
  "}
" }

" Maps{
  nnoremap <leader>b :BufExplorer<cr>
" }
"
" Settings for VimClojure{
  let vimclojure#HighlightBuiltins=1      " Highlight Clojure's builtins
  let vimclojure#ParentRainbow=1           " Rainbow parentheses'!
" }

" Settings for VimVala {
  " Disable valadoc syntax highlight
  let vala_ignore_valadoc = 1

  " Enable comment strings
  let vala_comment_strings = 1

  " Highlight space errors
  let vala_space_errors = 1

  " Disable trailing space errors
  "let vala_no_trail_space_error = 1

  " Disable space-tab-space errors
  let vala_no_tab_space_error = 1

  " Minimum lines used for comment syncing (default 50)
  "let vala_minlines = 120 
" }

