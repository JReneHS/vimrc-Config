syntax on
syntax enable
filetype plugin indent on

set mouse=a                             " Mouse Click"
set mouse=nicr                          " Mouse Scrolling"
set encoding=utf-8                      " Unicode."
set showmatch                           " Show matching bracket."
set clipboard=unnamed,unnamedplus       " public copy/paste register"
set number relativenumber               " Numbers lol"
set nowrap                              " Longest lines don't cut"
set cursorline                          " Highlight the current line."
set hidden                              " TextEdit maight fail if hidden is not set"
set ignorecase                          " searches are case insensitive..."
set smartcase                           " unless they contain at least one capital letter"
set incsearch                           " search as characters are entered"
set nohlsearch                          " Turn off highlighting."
set spell spelllang=en,es               " Language"
set termguicolors                       " pretty colors"
set scrolloff=3                         " Always show 3 lines of context."
set ttyfast lazyredraw                  " Make drawing fast."
set backspace=indent,eol,start          " Sane backspace."
set expandtab                           " Use spaces instead of tabs."
set cindent                             " Automatic indentation."
set history=9876                        " More remembers."
set splitbelow                          " New tab down"
set splitright                          " New tab right"
set autoindent                          " emm indent auto?"
set smarttab                            " Be smart using tabs"
set smartindent                         " Same un but using indent lol"
set visualbell                          " Blink instead of making noise."
set complete+=kspell
set noswapfile                          " No files to Swap"
set nobackup                            " No backup F"
set completeopt=menuone,longest
set shortmess+=c                        " Don't pass message to ins-completion-menu"
set wildmenu                            " graphical auto complete menu"
set autoread                            " if file change out of vim re-read"
set showmode                            " show mode active"
set showcmd                             " show last comand"
set laststatus=2 statusline=2           " Always show statusline"
set t_Co=256                            " Set if term supports 256 colors."
set path+=**                            " Searches current directory recursively."
set updatetime=150                      " No Longer updatetime"
set autochdir                           " change the current working directory whenever you open a file"
set omnifunc=syntaxcomplete#Complete

let mapleader=" "

"fast save and fast exit"
nmap <leader>w :w<CR>
nmap <leader>q :wq<CR>
nmap <leader>x :q!<CR>

"Split navigation"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Disable arrow keys"
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Keep it centered.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap J mzJ`z

"Copy all file"
nmap <leader>c :%y+<CR>

"Manejo de Tabs"
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

"Open New Tab"
nnoremap <C-n> :vnew<CR>
 
"Status Line"
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

"Terminal fix 24-bit."
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

"Crear a.in"
autocmd filetype cpp,c,rust,go,nim nnoremap <F7> :w <bar> :new a.in<bar> :wq <CR>

"C/C++ Linux"
autocmd filetype cpp,c nnoremap <F1> :w <bar> !time ./a.out<a.in <CR>
autocmd filetype cpp,c nnoremap <F2> :w <bar> !g++ -std=c++17 -O2 -Wall -Wpedantic % && time ./a.out<a.in <CR>
autocmd filetype cpp,c nnoremap cmain :call AddTemplate(" ~/.templates/template_CP.cpp")<CR>4<up>i<tab>
autocmd filetype cpp nnoremap fmain :-1read ~/.templates/template_main.cpp <CR>5<Down>i<tab>
autocmd filetype c nnoremap fmain :-1read ~/.templates/template_main.c <CR>4<Down>i<tab>

"C/C++ Windows"
autocmd filetype cpp,c nnoremap <F1> :w <bar> ! a.exe < a.in <CR>
autocmd filetype cpp,c nnoremap <F2> :w <bar> !g++ -std=c++17 -O2 -Wall -Wpedantic % && a.exe < a.in <CR>
autocmd filetype cpp,c nnoremap cmain :call AddTemplate("C:/Users/renep/Documents/templates/template_CP.cpp")<CR>4<up>i<tab>
autocmd filetype cpp nnoremap main :-1read C:/Users/renep/Documents/templates/template_main.cpp <CR>5<Down>i<tab>
autocmd filetype c nnoremap main :-1read C:/Users/renep/Documents/templates/template_main.c <CR>4<Down>i<tab>

"Rust"
autocmd filetype rust nnoremap <F1> :w <bar> ! %:t:r.exe < a.in <CR>
autocmd filetype rust nnoremap <F2> :w <bar> !rustc % && %:t:r.exe < a.in <CR>
autocmd filetype rust nnoremap <F3> :w <bar> !cargo run <CR>
autocmd filetype rust nnoremap <F4> :w <bar> !cargo build <CR>

"Golang"
autocmd filetype go nnoremap <F1> :w <bar> ! %:t:r.exe < a.in <CR>
autocmd filetype go nnoremap <F2> :w <bar> !go build % <CR>
autocmd filetype go nnoremap <F3> :w <bar> !go run % <CR>

"Add Data Windows"
autocmd filetype cpp,c,rust nnoremap data :call AddTemplate("C:/Users/renep/templates/template_Data01")<CR><CR>

"Add Data Linux"
autocmd filetype cpp,c,rust nnoremap data :call AddTemplate(" ~/.templates/template_Data01")<CR><CR>

"Coment Line"
autocmd filetype cpp,c,rust,go nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

function AddTemplate(tmpl_file)
    exe "0read " . a:tmpl_file
    let substDict = {}
    let substDict["name"] = "GioKim"
    let substDict["file"] = argv(0)
    let substDict["date"] = strftime("%Y %b %d %X")
    exe '%s/<<\([^>]*\)>>/\=substDict[submatch(1)]/g'
    set nomodified
    normal G
endfunction

inoremap {<CR> {<CR>}<Esc>O
inoremap {} {}<left>
inoremap () ()<left>
inoremap '' ''<left>
inoremap "" ""<left>
inoremap [] []<left>
