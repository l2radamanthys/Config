""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VINFILE CONFIGURATION
" Autor: Ricardo Daniel Quiroga
" Fecha: 21/08/2018
" OS: Linux/Ubuntu
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let path='$VIM/vimfiles/bundle/'  
"call vundle#begin()
call vundle#rc()

filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Instalar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'gmarik/vundle'

" Navegador de Ficheros
Bundle 'scrooloose/nerdtree'

" None
Bundle 'jistr/vim-nerdtree-tabs'

" Listado de Etiquetas
Bundle 'taglist.vim'

" No compatible con latex
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Autocomplete
Bundle 'AutoComplPop'

Bundle 'FindFile'
Bundle 'Lokaltog/vim-easymotion'

" C# suport
Plugin 'OrangeT/vim-csharp'

" Comentar
Plugin 'scrooloose/nerdcommenter'

" TagBarr
Bundle 'majutsushi/tagbar'

" Colores
Bundle 'lilydjwg/colorizer'

Plugin 'ctrlpvim/ctrlp.vim'

" Python autocompletion
Plugin 'davidhalter/jedi-vim'

" Enhanse JS sintax
Plugin 'jelera/vim-javascript-syntax'

" Typescript sintax
Plugin 'leafgarland/typescript-vim'

" Git integration
Plugin 'motemen/git-vim'

" javascript ATOM
Bundle 'pangloss/vim-javascript'
Bundle 'mustache/vim-mustache-handlebars'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" Opciones de Plegado
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Folded guibg=Gray5
set foldcolumn=1
set foldmethod=indent
set foldlevel=100                   " Evita que aparesca plegado cambiar por 1 para plegar todo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                           " resaltar sintaxis
set anti enc=utf-8
" set guifont=Source\ Code\ Pro\ 10
set guifont=Menlo\ 10
set helplang=es                     " lenguaje de la Ayuda
set number                          " mostrar numero de linea
set fileencoding=utf-8              " codificacion de texto
set expandtab                       " Espacios en ves de tabulaciones
set tabstop=4                       " tamaño tabulacion
set shiftwidth=4                    " identacion tamaño y que sea automatica
retab                               
set autoindent 
set paste                           " Desactivar esta entrada soluciona supuestamente el problema de autocomplete de Snipmate
set ic

set autochdir                       " Cambiar el directorio actual al archivo abierto
autocmd BufEnter * silent! lcd %:p:h

set backspace=eol,start,indent

" set mouse=v
set showmode                        " muestra el modo actual de VIM Normal/Edicion/Visor
set nobackup                        " backup de archivos desactivado
set noswapfile                      " desactiva archivos *.swap
set ruler
set showcmd                         " muestra la convinacion de teclas actual
set nowrap                          " desactiva el cortado de linea
set hlsearch
set ignorecase                      " ignora mayusculas y minusculas en las busquedas
set nohlsearch                      " no resaltar los resultados de la busqueda esto marea
set title                           " mostrar la ruta completa del archivo que se edita
set undolevels=500                  "deshacer casi infinito
"set history=20                      "historia de comandos

set colorcolumn=80                  " colorea la columna 80
highlight ColorColumn guibg=Gray8   " color de la columna 80
set cursorline                      " resalta la linea actual del cursor

set guitablabel=\[%N\]\ %t\ %M
au GUIEnter * set lines=30 columns=100  " Configura el tama? inicial de la ventana al abrir vim

" Esquema de Colores
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" El Esquema de colores solo se cambiara si esta en modo GUI
if has('gui_running')
    colorscheme rDark.1.1 
else
    colorscheme kolor
endif


" Mapeo de Teclas
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Guardado clasico de Ctrl + S
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

" map <F2> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
" map <F3> :TlistToggle<CR>
map <C-t> :TlistToggle<CR>
" map <F4> :NERDTreeTabsToggle<CR>

nmap <F8> :TagbarToggle<CR>

nmap _nt tabn
nmap _pt tabp
nmap _ft tabfirst
nmap _lt tablast

noremap <silent><F5> :wall \| !clear && echo "% is running..." && python3 %<CR>

" Otra Configuracion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" pestañas
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" una ventana un poco mas grande
au GUIEnter * set lines=30 columns=100

" Configuracion de NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeHighlightCursorline=1
let NERDTreeStatusline='-- Ficheros --'
let NERDTreeIgnore=['\.pyc$','\.back$', '\~$','\.swp$', '\.exe$', '\.aux$', '\.log$', '\.out$', '\.toc', '\.js.map', '__pycache__']
let NERDTreeAutoCenterThreshold=1
let NERDTreeMinimalUI=1
" let NERDTreeMapOpenInTab='<2-LeftMouse>'
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeDirArrows=1
let g:netrw_sort_sequence='\.c$,\.h$,*'

" Configuracion NerdTree tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nerdtree_tabs_open_on_console_startup=0 "no abrir al inicio
let g:nerdtree_tabs_open_on_gui_startup=0 "no abrir al inicio

" Configuracion de TagList
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let Tlist_Auto_Open=1
let Tlist_Sort_Type= 'name'
let Tlist_Compact_Format=1
let Tlist_Show_Menu=1
let Tlist_Show_One_File=1
let tlist_php_settings='php;f:function'   " No muestra las variable

map <F3> :TlistToggle<CR>

" Configuracion de la barra de estado
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi StatusLine guibg=gray ctermbg=gray

set laststatus=2                         " barra de estado siempre visible
set statusline =Archivo:\ %t
set statusline +=\ T:\ %y\ LB:\ [%{&ff}] " tipo y codificacion 
set statusline +=\ Bufer:\ %n
" right align
set statusline +=%=
set statusline +=\ Linea:\ %04l\ de:\ %04L\ \ |

" Configuracion especial de Resaltado de Sintaxis para Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syn sync fromstart                      "problemas de resaltado de sintaxis comunes

let python_version_2=1                  " Por Defecto la Version de Sintaxis de python es 2.x
let python_highlight_all=1              " Resaltado de Sintaxis para todo

map <F5> :!python %<CR>

" Configuracion de Syntastic 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_php_checkers = ['php']
let g:syntastic_python_checkers = ['python']
"simbolo marcar error
let g:syntastic_error_symbol = '!e'
let g:syntastic_warning_symbol = '!w'
"salta automaticamente al primer error
"let g:syntastic_auto_jump = 1

"map <F6> :SyntasticReset<CR>
map <F7> :SyntasticToggleMode<CR>
map <F8> :Errors<CR>

" Configuracion de EasyMotion (una verga no se como usarlo)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = ',,' 

" Configuración de CtrlP.vim 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

""""""""""""""""""""""""""""""""""""""""
" Typescript configuracion
""""""""""""""""""""""""""""""""""""""""
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
