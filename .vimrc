set number
set numberwidth=1
set relativenumber
syntax enable
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set mouse=nicr
set mouse=a
set clipboard=unnamed
set laststatus=2
set sw=4
set smarttab
set expandtab
set tabstop=4
set noshowmode
set incsearch
set hlsearch
set cursorline
set splitbelow splitright
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set guifont=Fira\ Code
filetype plugin indent on
set backspace=indent,eol,start
set wildmenu "graphical auto complete menu"
set wildmode=list:longest,full
set omnifunc=syntaxcomplete#Complete
set autoindent "en wildmenuable auto indentation of lines"
set smartindent "allow vim to best-effort guess the indentation"

set backup                       " Be safe.
set scrolloff=3                  " Always show 3 lines of context.
set ttyfast lazyredraw           " Make drawing fast.
set visualbell                   " Blink instead of making noise.
set hidden                       " Allow buffer backgrounding.
set cindent                      " Automatic indentation.
set ignorecase                   " Ignore case when searching.
set smartcase                    " Don't ignore it when pattern contains uppercase.
set history=9876                 " Remember a lot.
set undofile                     " Saves undo history across sessions.
"Fix Alacritty mouse"
"set ttymouse=sgr

let mapleader=" "
"Manejo automatico de archivos"
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>x :q!<CR>

"Remape para Borrado"
imap <C-BS> <C-W>

"redimension de las tabs"
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>
nmap <Leader>tx :tabclose<CR>

"manejo de tabs"
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

"CPBOOSTER"
nmap <F6> :Test<CR>
nmap <F5> :Rtest<CR>
nmap <F4> :Submit<CR>

"Copy File"
nmap <Leader>cc :%y+<CR>
nmap <F12> :%y+<CR>

"Coc Remap"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gl <Plug>(coc-references)
nmap <silent> gc <Plug>(coc-type-definition)
nmap <silent> gf <Plug>(coc-implementation)
nnoremap <silent> K :call <SID>show_documentation()<CR>

"RUST"
autocmd filetype rs nnoremap <f1> :w <bar> :RustRun <CR>
autocmd filetype rs nnoremap <f2> :w <bar> :Cbuild <CR>
autocmd filetype rs nnoremap <f3> :w <bar> :Crun <CR>

"C++"
autocmd filetype cpp nnoremap <F1> :w <bar> !time ./a.out<a.in <CR>
autocmd filetype cpp nnoremap <F2> :w <bar> !g++ -std=c++17 -O2 -Wall % && time ./a.out<a.in <CR>

"Golang"
autocmd filetype go nnoremap <F1> :w <bar> !time ./%:t:r < a.in <CR>
autocmd filetype go nnoremap <F2> :w <bar> !go build % <CR>
autocmd filetype go nnoremap <F3> :w <bar> !go run % <CR>

"Terminal"
nnoremap <F7> :w <bar> :vnew <bar> :term <CR>

"LINUX"
call plug#begin('~/.local/share/nvim/plugged')
"WINDOWS"
"call plug#begin('C:\Users\renep\vimfiles\plugin')

"Temas"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'dikiaap/minimalist'


"Syntax help lenguage"
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-syntastic/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Others"
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'searleser97/cpbooster.vim'


Plug 'msanders/snipmate.vim'

call plug#end()

"Temas De color"
highlight clear
syntax reset

set background=dark
set t_Co=256


if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:lightline = {'colorscheme': 'deepspace'}
let g:airline_theme = "deus"

let g:rainbow_active = 1

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P

let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material


"////////////////////////////////////////////////////////////////////////////////"


"NerdTree"
let g:NERDTreeChDirMode = 2  "Cambia el directorio actual al nodo padre actual"
let NERDTreeQuitOnOpen=1

"Abrir NERDTree"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"Abrir NERDTree cuando NVIM no tiene argumentos"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"IndentLine"
" No mostrar en ciertos tipos de buffers y archivos"
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

let g:python3_host_prog =''

"GitGutter refresh"
set updatetime=250

"AirLine"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"GO"
let g:go_gopls_enabled = 1
let g:go_version_warning = 0

"Octol"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

let g:SuperTabDefaultCompletionType = '<A-n>'
let g:SuperTabContextDefaultCompletionType = '<A-n>'

"Rust"
let g:rustfmt_autosave = 1

"Kite Conf"
let g:kite_supported_languages = ['python','javascript']

"CoC"
let g:coc_disable_startup_warning = 1
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@


"Auto completados gatillados"
if &filetype == "javascript" || &filetype == "python"
    inoremap <c-space> <C-x><C-u>
else
    inoremap <silent><expr> <c-space> coc#refresh()
endif

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" :"<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <Left> pumvisible() ? "<C-e>" :"<Left>"

"Mostrar Dacumentacion con K"
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

"NeoVide"
"let g:neovide_transparency=0.9
"let g:neovide_fullscreen=v:true
