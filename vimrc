set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle "pangloss/vim-javascript"

if v:version > 730
  Bundle 'Valloric/YouCompleteMe'
endif

set hidden
syntax enable
colorscheme solarized

set guifont=Menlo:h14

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set autoread
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set expandtab
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set spell
filetype plugin indent on
autocmd filetype python set expandtab

set list
set listchars=tab:▸\ ,eol:¬
"map <up> ddkP
"map <down> ddp
"map <left> :tabp<CR>
"map <right> :tabn<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\stage$\|doc/build$\|CMakeFiles$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\$',
  \ }
let g:ctrlp_max_files = 10000

if has("unix")
  let g:ctrlp_user_command = {
    \ 'types' : { 1 : ['.git', 'cd %s && git ls-files'] },
    \ 'fallback' : 'find %s -type f | head -' . g:ctrlp_max_files
    \ }
endif
set mouse=a
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
set laststatus=2
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap jk <esc>
inoremap <esc> <nop>
set scrolloff=8
set sidescroll=1

nmap <LEADER>c :let @/=''<CR>
