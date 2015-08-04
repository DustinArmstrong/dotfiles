set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required

" Set Leader
let mapleader=","
let g:mapleader=","

map <leader>n :NERDTreeToggle<CR> " Nerdtree Toggle
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
nnoremap <F5> :GundoToggle<CR> " GundoTree Toggle

au VimEnter * NERDTree " Open NERDTree by default
au VimEnter * wincmd p " Focus on file instead of NERDTree

set autochdir " Sets working directory to the current file

" Tab Settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

set autoindent " Sets default indentation

set undofile " Enable undo history
set undodir=$HOME/.vim/undo " Where to save undo histories

set undolevels=1000
set undoreload=10000

set number " Enable numbers in side column

set iskeyword-=_ 

let g:ackprg = 'ag --nogroup --nocolor --column' " Ag/Silver Searcher

" Syntax/Color Settings
" let g:Yosemite_termcolors= 256
syntax enable 
colorscheme Yosemite-Solarized
filetype plugin indent on

set clipboard=unnamed
