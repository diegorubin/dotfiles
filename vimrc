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
  set showbreak=…                 " what to show at the start of a wrapped line
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
  set tabstop=4           " real tabs will show 8 spaces
  set softtabstop=4       " how many spaces in a tabstop
  set shiftwidth=4        " sw: indent size
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
