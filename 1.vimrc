set number
set nocompatible
set ffs=unix
set encoding=utf-8
set scrolloff=3
set ttyfast lazyredraw
set backspace=indent,eol,start
set visualbell
set hidden
set showmatch
set number relativenumber
set numberwidth=1
set cursorline ruler
set expandtab
set tabstop=4
set shiftwidth=4
set cindent
set ignorecase
set smartcase smarttab
set incsearch 
set nohlsearch
set shell=sh
set history=9876
set wildmenu
set wildmode=list:longest,full
set laststatus=2

set clipboard=unnamed
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set showcmd

set guifont=Fira\ Code "To Do... arreglar los ligatures"

"Mouse"
set mouse=nicr
set mouse=a

filetype plugin indent on

"redimension de las tabs"
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>
nmap <Leader>tx :tabclose<CR>
let mapleader=" "

"Manejo de archivos"
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
