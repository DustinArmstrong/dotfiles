" Initialize Pathogen
execute pathogen#infect()

" Set Leader
let mapleader=","
let g:mapleader=","

map <leader>n :NERDTreeToggle<CR> " Nerdtree Toggle
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

set number " Enable numbers in side column

let g:ackprg = 'ag --nogroup --nocolor --column' " Ag/Silver Searcher

" Syntax/Color Settings
colorscheme yosemite
syntax on
filetype plugin indent on
