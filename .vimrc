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
set sw=4
set noshowmode
set incsearch
set hlsearch
set cursorline

let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>qq :q!<CR>
nmap <Leader>q :q<CR>


call plug#begin('C:\Users\renep\vimfiles\plugin')

"Temas
Plug 'vim-airline/vim-airline'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'

"Syntax help lenguage
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neocomplete.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'wolfgangMehner/c-support'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'


"Others
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


call plug#end()

"Temas de color
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight'}
let g:airline_theme = "palenight"
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
let g:nvim_typescript#server_path=''


"GitGutter refresh
set updatetime=250

"AirLine
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

"TypeScript
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
autocmd FileType typescript :set makeprg=tsc
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

"C help
let g:C_useTool_cmake='yes'
let g:C_useTool_doxygen='yes'


"JavaSript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

