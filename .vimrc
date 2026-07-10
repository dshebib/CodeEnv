call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

set nu

syntax enable
set background=dark

colorscheme darktangom

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

set foldmethod=syntax
set foldlevelstart=99

noremap <S-y> "+y
