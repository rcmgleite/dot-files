set background=dark

let mapleader = "\<tab>"

"Nerdtree
execute pathogen#infect()
syntax on
filetype plugin indent on

" PLUGINS

" Open NerdTree by default
"autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

" Tagbar
map <c-l> :TagbarToggle<CR>

" syntastic
let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = { 'dir': 'build$\|node_modules$\|vendor$\|Assembly-CSharp.csproj\|./Temp' }

" switch buffer
map <F7> :bp <c-m>
map <F8> :bn <c-m>
map <leader>b :buffers <c-m>
map <F9> :cp <c-m>
map <F10> :cn <c-m>

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" use space as enter
map <space> <c-m>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"" CUSTOM FUNCTIONS
fun! s:FindAndReplaceFunc(searchStr, replaceStr)
  execute ':args *'
  execute ':argdo %s/' . a:searchStr . '/' . a:replaceStr . '/ge | update'
endfun

"" CUSTOM COMMANDS
" opens search results in a window w/ links and highlight the matches
command! -nargs=+ Grep execute 'grep! -I -r -w -n --exclude-dir=node_modules --exclude-dir=vendor . -e <args>' | copen | execute 'silent /<args>'
command! -nargs=+ FindAndReplace call s:FindAndReplaceFunc(<f-args>)
" shift-control-* Greps for the word under the cursor
map <leader><leader> :Grep <c-r>=expand("<cword>")<cr><cr>
" Encoding
set encoding=utf-8
set fileencoding=utf-8

" line numbers
set number
map <c-n> :set invnumber <c-n>
set mouse=a

" Clipboard
set clipboard=unnamed
set paste
set go+=a

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
set bdir=~/.vim/backup/
" swap
set dir=~/.vim/swap/

" hlsearch
set hlsearch

" see name of the file all the time
set laststatus=2

" wildmenu for buffers
set wildmode=longest,list,full
set wildmenu

" Theme
colorscheme atom-dark-256

" JSX
let g:jsx_ext_required = 1

" JS
let g:javascript_plugin_jsdoc = 1

" C/C++
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Go
let g:go_autodetect_gopath = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
nmap <s-b> :GoBuild <c-m>
nnoremap <leader>d <C-w>:GoDef <c-m>
nnoremap <leader>n <C-w>:tabnew <c-m>
nnoremap <leader>p <C-w>:tabnext <c-m>
nnoremap <leader>P <C-w>:tabprevious <c-m>
map <F5> :GoReferrers <c-m>

" Python
let g:python_highlight_all = 1

" Status line
" [buffer number] followed by filename:
set statusline=[%n]\ %t
" for Syntastic messages:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" show line#:column# on the right hand side
set statusline+=%=%l:%c
