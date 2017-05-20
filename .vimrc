set background=dark
set t_Co=256

"Nerdtree
execute pathogen#infect()
syntax on
filetype plugin indent on

" Open NerdTree by default
"autocmd VimEnter * NERDTree 
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" switch buffer
:map <F7> :bp <c-m>
:map <F8> :bn <c-m>
:map <c-b> :buffers <c-m>

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" line numbers
set number
:map <c-n> :set invnumber <c-n>
set mouse=a

" Clipboard
:set clipboard+=unnamed
:set clipboard+=unnamedplus
:set paste
:set go+=a

" Tab space
set tabstop=2
set shiftwidth=2
set expandtab

" Undo
set undofile
set udir=~/.vim/undo//
set ul=1000
set ur=10000
set fileformat=unix
vnoremap <C-c> "+y
" backup
set bdir=~/.vim/backup//
" swap
set dir=~/.vim/swap//

" hlsearch
set hlsearch

" see name of the file all the time
set laststatus=2

" wildmenu for buffers
set wildmode=longest,list,full
set wildmenu

" Theme
colorscheme atom-dark-256

" JS
let g:javascript_plugin_jsdoc = 1

" C/C++
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

"Go To definition - F3
:map <F4> :GoDef <c-m>
" Compile Gocode - Ctrl-Shift-b
:map <c-s-b> :GoBuild <c-m>
" Same as ctrl-shift-g on eclipse for C++
:map <F5> :GoReferrers <c-m>
