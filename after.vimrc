" file tree
NeoBundle 'scrooloose/nerdtree'
" file tree and tabs interaction
NeoBundle 'jistr/vim-nerdtree-tabs'
" commenting
NeoBundle 'scrooloose/nerdcommenter'
" fuzzy file open
NeoBundle 'kien/ctrlp.vim'
" popup completion menu
NeoBundle 'AutoComplPop'
" tags list navigation
"NeoBundle 'taglist.vim'
" yank history
NeoBundle 'YankRing.vim'
" git integration
NeoBundle 'tpope/vim-fugitive'
" syntax checking on save
NeoBundle 'scrooloose/syntastic'
" manipulation of surraunding parens, quotes, etc.
NeoBundle 'tpope/vim-surround'
" vertical alignment tool
NeoBundle 'tsaleh/vim-align'
" 'ag' searching integration
NeoBundle 'rking/ag.vim'
" text object based on indent level (ai, ii)
NeoBundle 'austintaylor/vim-indentobject'
" global search & replace
NeoBundle 'greplace.vim'
" better looking statusline
NeoBundle 'bling/vim-airline'
" plugin for resolving three-way merge conflicts
NeoBundle 'sjl/splice.vim'
" plugin for visually displaying indent levels
NeoBundle 'Indent-Guides'
" end certain structures automatically, e.g. begin/end etc.
NeoBundle 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
NeoBundle 'Raimondi/delimitMate'
" A Narrow Region Plugin (similar to Emacs)
NeoBundle 'chrisbra/NrrwRgn'
" url based hyperlinks for text files
NeoBundle 'utl.vim'
" switch segments of text with predefined replacements. e.g. '' -> ""
NeoBundle 'AndrewRadev/switch.vim'
" async external commands with output in vim
NeoBundle 'tpope/vim-dispatch'
" git diff in the gutter (sign column) and stages/reverts hunks
NeoBundle 'airblade/vim-gitgutter'

" Ruby/Rails

" rails support
NeoBundle 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
NeoBundle 'tpope/vim-bundler'
" rake integration
NeoBundle 'tpope/vim-rake'
" A custom text object for selecting ruby blocks (ar/ir)
NeoBundle 'nelstrom/vim-textobj-rubyblock'
" ruby refactoring
NeoBundle 'ecomba/vim-ruby-refactoring'
" apidock.com docs integration
NeoBundle 'apidock.vim'
" toggle ruby blocks style
NeoBundle 'vim-scripts/blockle.vim'
" lightweight Rspec runner for Vim
NeoBundle 'thoughtbot/vim-rspec'
" Rvm integration
NeoBundle 'tpope/vim-rvm'
" Rubocop
NeoBundle 'ngmy/vim-rubocop'
" Flog
NeoBundle 'vrybas/vim-flog'

" Java
NeoBundle 'JavaKit'

" Javascript
NeoBundle 'Shutnik/jshint2.vim'

" RunMySource
NeoBundle 'diegorubin/vim-runmysource'

" syntax support
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tsaleh/vim-tmux'
NeoBundle 'Puppet-Syntax-Highlighting'
NeoBundle 'JSON.vim'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'vitaly/vim-syntastic-coffee'
NeoBundle 'vim-scripts/jade.vim'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'VimClojure'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'nono/vim-handlebars'

" Support and minor

" Support for user-defined text objects
NeoBundle 'kana/vim-textobj-user'
" replacement for the repeat mapping (.) to support plugins
NeoBundle 'tpope/vim-repeat'
" hide .gitignore-d files from vim
NeoBundle 'vitaly/vim-gitignore'
" repeat motion with <Space>
NeoBundle 'scrooloose/vim-space'
" Github's gist support
NeoBundle 'mattn/gist-vim'
" web APIs support
NeoBundle 'mattn/webapi-vim'
" Github issues
NeoBundle 'jaxbot/github-issues.vim'

" Gui Configs
" ==============

if has("gui_running")
    set guioptions+=m
    colorscheme torte
    set guifont=Monospace
endif

" Map Configs
" ==============

" Windows{
    nmap <leader>s :split<CR>
    nmap <leader>v :vsplit<CR>
    nmap <leader>o :only<CR>
    nmap <leader>p :NERDTreeToggle<CR>
" " }}

" Editor Configs
" ==============

" Highlighting column
set cursorcolumn

" Set the cursor to stop when it hits the end of a line
set ve=

" Tabs {
    " size of a hard tabstop
    set tabstop=2
    
    " size of an "indent"
    set shiftwidth=2
    
    " a combination of spaces and tabs are used to simulate tab stops at a width
    " other than the (hard)tabstop
    set softtabstop=2
" }

" Syntax
au BufReadPost *.hbs set syntax=html

