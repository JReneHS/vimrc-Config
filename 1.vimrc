syntax on
syntax enable
filetype plugin indent on

set mouse=a
set mouse=nicr                          "integracion de mouse
set encoding=utf-8
set showmatch
set clipboard=unnamed,unnamedplus
set number relativenumber
set title                               "titulo en la parte superior
set nowrap                              "no corta lineas largas
set cursorline                          "resalta la linea en uso
set hidden                              "permite cambiar de buffer
set ignorecase                          "ignora mayusculas en busquedas
set smartcase                           "No ignora mayusculas en busquedas
set incsearch
set nohlsearch
set shell=sh
set spell spelllang=en,es
set termguicolors
set scrolloff=3
set ttyfast lazyredraw
set backspace=indent,eol,start
set expandtab tabstop=4 softtabstop=4 shiftwidth=4 cindent history=9876
set splitbelow splitright autoindent
set smarttab smartindent noshowmode visualbell
set complete+=kspell completeopt=menuone,longest
set shortmess+=c wildmenu autoread showmode showcmd
set laststatus=2 statusline=2
set t_Co=256
set path+=**
set autochdir
set omnifunc=syntaxcomplete#Complete

let mapleader=" "

nmap <leader>w :w<CR>
nmap <leader>q :wq<CR>
nmap <leader>x :q!<CR>

nmap <Left>  h
nmap <Right> l
nmap <Up>    k
nmap <Down>  j

nnoremap <C-down> <C-W><C-J>
nnoremap <C-up> <C-W><C-K>
nnoremap <C-right> <C-W><C-L>
nnoremap <C-left> <C-W><C-H>

imap <c-BackSpace> <C-W>
nmap <F12> :%y+<CR>

map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

autocmd filetype vim map <C-s> :source ~/.config/nvim/init.vim<CR>

"Status Line
set statusline=
set statusline+=\ %h
set statusline+=\ %M
set statusline+=\ %r
set statusline+=\ %y
set statusline+=\ %F
set statusline+=%=
set statusline+=\ %cΞ«%l/%L»
set statusline+=\ %p%%
set statusline+=%#IncSearch#
set statusline+=\ [%n]
 
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" :"<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <Left> pumvisible() ? "<C-e>" :"<Left>"

"C++"
autocmd filetype cpp nnoremap <F1> :w <bar> !time ./a.out<a.in <CR>
autocmd filetype cpp nnoremap <F2> :w <bar> !g++ -std=c++17 -O2 -Wall % && time ./a.out<a.in <CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd BufNewFile *.cpp call AddTemplate(" ~/template.cpp")

function AddTemplate(tmpl_file)
    exe "0read " . a:tmpl_file
    let substDict = {}
    let substDict["name"] = "GioKim"
    let substDict["date"] = strftime("%Y %b %d %X")
    exe '%s/<<\([^>]*\)>>/\=substDict[submatch(1)]/g'
    set nomodified
    normal G
endfunction<F12>

inoremap {<CR> {<CR>}<Esc>O
inoremap {} {}<left>
inoremap () ()<left>
inoremap '' ''<left>
inoremap "" ""<left>
inoremap [] []<left>

"//////////<<<<<EXPERIMENTAL>>>>>/////////"

" Make Y behave like C and D.
nnoremap Y y$

" Keep it centered.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap J mzJ`z

" Undo break points.
inoremap , ,<C-g>u
inoremap . .<C-g>u

" Jumplist mutations.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'