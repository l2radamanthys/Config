" -----------------------------------------------------------------------------
" Instalar plugins aquí
" -----------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

Plug 'arielrossanigo/dir-configs-override.vim'  " Vim proyect custom config
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'                 " sopote extendido para varios lenguajes
Plug 'valloric/MatchTagAlways'              " resaltar par etiquetas html

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                     " fuzzi finder
Plug 'https://gist.github.com/drasill/ff9b94025dc8aa7e404f',
    \ { 'dir': g:plug_home.'/vim-fzf-git-ls-files/plugin', 'rtp': '..' }

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mustache/vim-mustache-handlebars'     " soporte para handlebars

Plug 'vim-airline/vim-airline'              " Airline status ba             
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'               " devicons para varias cosas
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

Plug 'Yggdroot/indentLine'                " mostrar identacion
" Plug 'taglist.vim'
Plug 'majutsushi/tagbar'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/context_filetype.vim'

Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-surround'

Plug 'lilydjwg/colorizer'
Plug 'mattn/emmet-vim'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Plug 'Quramy/tsuquyomi'

call plug#end()

" -----------------------------------------------------------------------------
" Configuracion General
" -----------------------------------------------------------------------------
syntax on
" set anti enc=utf-8
set fileencoding=utf-8                      " codificacion de texto<Paste>
set encoding=UTF-8

filetype plugin on
filetype indent on

set ls=2
set hidden                                  " cambiar de buffer sin guardar

set expandtab                               " insertar espacios en lugar de <Tab>s
set tabstop=4                               " tamaño tabulacion
set shiftwidth=4                            " identacion tamaño y que sea automatica
retab     
set autoindent
set nowrap                                  " desactiva el cortado de linea
" set paste
" set colorcolumn=80                          " colorea la columna 80
" highlight ColorColumn guibg=Gray8           " color de la columna 80
set cursorline
set number                                  " mostrar numero de linea
" set guifont=Menlo\ 12                       " configurar fuente del editor
set guifont=Meslo\ Nerd\ Font\ 12
set helplang=es                             " lenguaje de la Ayuda

" colorscheme rDark.1.1                       " Tema de colores
colorscheme wyrven                          " Tema de colores

" set autochdir                               " cambia el directorio actual al archivo abierto
autocmd BufEnter * silent! lcd %:p:h
set backspace=eol,start,indent

set mouse=a
set showmode
set showcmd
set nobackup
set noswapfile
set ruler
set showcmd

set ignorecase                              " ignora mayusculas y minusculas en las busquedas
set nohlsearch                              " no resaltar los resultados de la busqueda esto marea
" set title                                   " mostrar la ruta completa del archivo que se edita
set undolevels=500                          " deshacer casi infinito
set lcs+=space:·

" set guitablabel=\[%N\]\ %t\ %M
" set guitablabel=%t
au GUIEnter * set lines=30 columns=100      " Configura el tama? inicial de la ventana al abrir vim

set fillchars+=vert:\ 




" -----------------------------------------------------------------------------
" Configuracion de la barra de estado
" -----------------------------------------------------------------------------
hi StatusLine guibg=gray ctermbg=gray
set laststatus=2                            " barra de estado siempre visible
" set statusline =Archivo:\ %t
" set statusline +=\ T:\ %y\ LB:\ [%{&ff}]    " tipo y codificacion 
" set statusline +=\ Bufer:\ %n
" right align
" set statusline +=%=
" set statusline +=\ Linea:\ %04l\ de:\ %04L\ \ |
" Deshabilitado para usar #Airline

" -----------------------------------------------------------------------------
" MAPEO DE TECLAS GENERALES
" -----------------------------------------------------------------------------
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

nmap _nt tabn                           " Moverse entre tabs
nmap _pt tabp
nmap _ft tabfirst
nmap _lt tablast

" map <A-Left> :tabp<CR>            " Moverse entre pestañas Alt + <- / Alt + ->
map <A-Right> :bnext<CR>            " Moverse entre pestañas Alt + <- / Alt + ->
" map <A-Right> :tabn<CR>               
map <A-Left> :bprevious<CR>               
" map tt :tabnew<CR>
map tt :enew<CR>

" Mapeo de teclas
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
" Abrir Fzf 
map ,p :GFiles<CR>
map ,e :Files<CR>
map ,g :GFiles<CR>
nnoremap <C-f> :FZF<CR>

map ,j :vertical resize -10<CR>
map ,l :vertical resize +10<CR>

" -----------------------------------------------------------------------------
" Configuracion de NERDTree
" -----------------------------------------------------------------------------
let NERDTreeHighlightCursorline=1
" let NERDTreeStatusline='-- Ficheros --'
let NERDTreeIgnore=['\.pyc$','\.back$', '\~$', '\.swp$', '\.exe$', '\.aux$', '\.log$', '\.out$', '\.toc', '\.js.map', '__pycache__']
let NERDTreeAutoCenterThreshold=1
let NERDTreeMinimalUI=1
" let NERDTreeMapOpenInTab='<2-LeftMouse>'
let NERDTreeMapOpenInTab='<ENTER>'
" let NERDTreeDirArrows=1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let NERDTreeNodeDelimiter = "\x07"
" let g:netrw_sort_sequence='\.c$,\.h$,*'<Paste>

" -----------------------------------------------------------------------------
" CtrlP
" -----------------------------------------------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" -----------------------------------------------------------------------------
" Neoplete
" -----------------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
\   'ignore_case': v:true,
\   'smart_case': v:true,
\})
" complete with words from any opened file
let g:context_filetype#same_filetypes = {}
let g:context_filetype#same_filetypes._ = '_'

set completeopt+=noinsert
set completeopt-=preview
set wildmode=list:longest


" Jedi-vim
let g:jedi#completions_enabled = 0

" -----------------------------------------------------------------------------
" Configuracion de fzf
" -----------------------------------------------------------------------------
" FZF key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }


" -----------------------------------------------------------------------------
" Utilsnip
" -----------------------------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetsDir = $HOME."/.config/nvim/my_snippets"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]


" -----------------------------------------------------------------------------
" Ident Line
" -----------------------------------------------------------------------------
let g:indentLine_enabled = 0
let g:indentLine_faster = 1
" let g:indentLine_char = '⎸'

" Mostrar espacios
" set list
" set lcs=tab:>-,eol:$,space:.

" -----------------------------------------------------------------------------
" Configuracion de Airline
" -----------------------------------------------------------------------------
" let g:airline_theme='minimalist'
" let g:airline_theme='luna'
" let g:airline_theme='sol'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let fancy_symbols_enabled = 1
if fancy_symbols_enabled
    let g:webdevicons_enable = 1

    " custom airline symbols
    if !exists('g:airline_symbols')
       let g:airline_symbols = {}
    endif

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = '⭠'
    let g:airline_symbols.readonly = '⭤'
    let g:airline_symbols.linenr = '⭡'
else
    let g:webdevicons_enable = 0
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

" TABS
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" -----------------------------------------------------------------------------
" Comandos personalizados
" -----------------------------------------------------------------------------
command Cdw execute "cd ~/Workspace"
command Cdp execute "cd ~/Workspace/Python"
command Cde execute "cd ~/Workspace/EmberJs"
command ReloadCfg execute "so ~/.config/nvim/init.vim"
command OpenCfg execute "e ~/.config/nvim/init.vim"

