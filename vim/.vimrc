set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'tpope/vim-sensible'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'bling/vim-bufferline'
  Plugin 'tpope/vim-commentary'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic'
  "Plugin 'valloric/youcompleteme'
  Plugin 'tpope/vim-surround'
  Plugin 'thinca/vim-quickrun'
  Plugin 'sjl/gundo.vim'
  Plugin 'kien/ctrlp.vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'raimondi/delimitmate'
  Plugin 'luochen1990/rainbow'
  Plugin 'bronson/vim-trailing-whitespace'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-rails'
  Plugin 'heavenshell/vim-jsdoc'
call vundle#end()

set background=dark
colorscheme solarized
let g:rainbow_active = 1

let mapleader = " "

" for better nav for linewrap
noremap j gj
noremap k gk


" use help
map <leader>h :vertical help<space>
map <leader>hh :vertical help<space><cr>

" file manage
" " search file and open
map <leader>ff :CtrlP<cr>
" " 打开上一个文件
map <leader>fr :CtrlPMRUFiles<cr>
" " 目录树
map <leader>ft :NERDTreeToggle<cr>
" " 重做
nnoremap <leader>ut :GundoToggle<cr>

" window manage
map <leader>wh <c-w>h
map <leader>wj <c-w>j
map <leader>wk <c-w>k
map <leader>wl <c-w>l
map <leader>wr <c-w>r
map <leader>wc <c-w>c
map <leader>wo <c-w>o
map <leader>w= <c-w>=
map <leader>wv :vsplit<cr>
map <leader>w- :split<cr>

" buffer manage
map <leader>bb :CtrlPBuffer<cr>
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>

" some options toggle
map <leader>tn :set number!<cr>
map <leader>tp :set paste!<cr>
map <leader>fw :FixWhitespace<cr>

" help navigation doc better
map <leader>nf <c-]>
map <leader>nb <c-t>

" for better completion
inoremap <expr><C-j>     pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><C-k>     pumvisible() ? "\<C-p>" : "\<C-k>""
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()

let g:quickrun_config = {"_" : {"outputter" : "message"}}

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" let g:ycm_server_python_interpreter = "/Users/zhenhua/.pyenv/shims/python"


" turn off swap files
set noswapfile
set nobackup
set nowb

" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  set undodir=~/.vim/backups
  set undofile
endif

" Enable mouse use in all modes
set mouse=a

" indent setting
set expandtab
set shiftwidth=2
set softtabstop=2

" make default split natural
set splitbelow
set splitright

set clipboard=unnamed
"let g:airline#extensions#tabline#enabled = 1
