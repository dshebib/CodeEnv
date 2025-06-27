call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'

call plug#end()

set nu

syntax enable
set background=light
let g:solarized_termcolors=16

set cursorline

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

set ttyfast

set laststatus=2
set matchpairs+=<:>

set hlsearch
set incsearch

set splitright
set splitbelow

set noautoread

noremap <S-y> "+y
