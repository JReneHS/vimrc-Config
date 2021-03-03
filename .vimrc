set number
set numberwidth=1
set relativenumber
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set mouse=a
set clipboard=unnamed
set laststatus=2
set background=dark
set sw=2
set noshowmode
set incsearch
set hlsearch
set cursorline

set wildmenu "graphical auto complete menu
set omnifunc=syntaxcomplete#Complete
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation



let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>x :q!<CR>
imap <C-BS> <C-W>
set backspace=indent,eol,start

call plug#begin('C:\Users\renep\vimfiles\plugin')

"Temas
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'

"Syntax help lenguage
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-syntastic/syntastic'


"Others
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'

"Plug 'ervandew/supertab'
Plug 'msanders/snipmate.vim'

call plug#end()

"Temas de color
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight'}
let g:airline_theme = "deus"
set termguicolors
let g:rainbow_active = 1

"NerdTree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let NERDTreeQuitOnOpen=1

" Abrir/cerrar NERDTree con F2
nmap <Leader>nt :NERDTreeFind<CR>

"IndentLine
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

let g:python3_host_prog ='C:\Users\renep\AppData\Local\Programs\Python\Python39\python.exe'

"GitGutter refresh
set updatetime=250

"AirLine
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

"GO
let g:go_gopls_enabled = 0


"Multiple cursors
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

let g:SuperTabDefaultCompletionType = '<A-n>'
let g:SuperTabContextDefaultCompletionType = '<A-n>'
