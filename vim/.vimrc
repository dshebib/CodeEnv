call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'

call plug#end()

set nu

set cursorline

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set matchpairs+=<:>

set hlsearch

set splitright
set splitbelow

set foldmethod=syntax
set foldlevelstart=99

set statusline=%f\ %m%r%h%w%=%y\ %l:%c\ %p%%

nnoremap Y "+y
nnoremap YY "+yy
xnoremap Y "+y
