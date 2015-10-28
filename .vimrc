set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"vim-go plugin
Plugin 'fatih/vim-go'

"vim-gocode
Plugin 'Blackrush/vim-gocode'

"you-complete-me plugin
Plugin 'YouCompleteMe'

" C++ highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" vim Coffeescript
Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"syntax on
syntax on

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set mouse=a
" Alias

" Commons:
:map <F7> :bp <c-m>
:map <F8> :bn <c-m>

" Go lang alias: 
" Go To definition - F3
:map <F3> :GoDef <c-m>
" Compile Gocode - Ctrl-Shift-b
:map <c-s-b> :GoBuild <c-m>
" Same as ctrl-shift-g on eclipse for C++
:map <F2> :GoReferrers <c-m>
:map <c-p> :CtrlP .<c-m>

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" line numbers
set number

" Tab space
set tabstop=2
set shiftwidth=2
set noexpandtab

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

" Golang specific features
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

