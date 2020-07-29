" -----------------------------------------------------------------------------
" Instalar plugins aqui
" -----------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'                 " sopote extendido para varios lenguajes
Plug 'valloric/MatchTagAlways'              " resaltar par etiquetas html
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                     " fuzzi finder
Plug 'mustache/vim-mustache-handlebars'     " soporte para handlebars

call plug#end()

" -----------------------------------------------------------------------------
" Configuracion del Editor
" -----------------------------------------------------------------------------
syntax on
" set anti enc=utf-8
set fileencoding=utf-8                      " codificacion de texto<Paste>

set tabstop=4                               " tamaño tabulacion
set shiftwidth=4                            " identacion tamaño y que sea automatica
set expandtab                               " insertar espacios en lugar de <Tab>s
retab     
set autoindent
set nowrap                                  " desactiva el cortado de linea
" set paste
" set colorcolumn=80                          " colorea la columna 80
" highlight ColorColumn guibg=Gray8           " color de la columna 80
set cursorline
set number                                  " mostrar numero de linea
set guifont=Menlo\ 12                       " configurar fuente del editor
set helplang=es                             " lenguaje de la Ayuda

colorscheme rDark.1.1                       " Tema de colores

" set autochdir                               " cambia el directorio actual al archivo abierto
autocmd BufEnter * silent! lcd %:p:h
set backspace=eol,start,indent

set mouse=a
set showmode
set nobackup
set noswapfile
set ruler
set showcmd

set ignorecase                              " ignora mayusculas y minusculas en las busquedas
set nohlsearch                              " no resaltar los resultados de la busqueda esto marea
" set title                                   " mostrar la ruta completa del archivo que se edita
set undolevels=500                          " deshacer casi infinito

set guitablabel=\[%N\]\ %t\ %M
au GUIEnter * set lines=30 columns=100      " Configura el tama? inicial de la ventana al abrir vim


" -----------------------------------------------------------------------------
" Configuracion de la barra de estado
" -----------------------------------------------------------------------------
hi StatusLine guibg=gray ctermbg=gray
set laststatus=2                            " barra de estado siempre visible
set statusline =Archivo:\ %t
set statusline +=\ T:\ %y\ LB:\ [%{&ff}]    " tipo y codificacion 
set statusline +=\ Bufer:\ %n
" right align
set statusline +=%=
set statusline +=\ Linea:\ %04l\ de:\ %04L\ \ |

" -----------------------------------------------------------------------------
" MAPEO DE TECLAS GENERALES
" -----------------------------------------------------------------------------
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

" -----------------------------------------------------------------------------
" Configuracion de NERDTree
" -----------------------------------------------------------------------------
let NERDTreeHighlightCursorline=1
let NERDTreeStatusline='-- Ficheros --'
let NERDTreeIgnore=['\.pyc$','\.back$', '\~$','\.swp$', '\.exe$', '\.aux$', '\.log$', '\.out$', '\.toc', '\.js.map', '__pycache__']
let NERDTreeAutoCenterThreshold=1
let NERDTreeMinimalUI=1
" let NERDTreeMapOpenInTab='<2-LeftMouse>'
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeDirArrows=1
" let g:netrw_sort_sequence='\.c$,\.h$,*'<Paste>
map <C-n> :NERDTreeToggle<CR>           " Mapeo de teclas


" -----------------------------------------------------------------------------
" Configuracion de fzf
" -----------------------------------------------------------------------------
map <C-p> :GFiles<CR> 
