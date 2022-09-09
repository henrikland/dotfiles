inoremap jk <ESC>
let mapleader = "'"
syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set re=0
set tabstop=4
set shiftwidth=4
set expandtab

filetype indent on
filetype plugin indent on
set autoindent

packloadall

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'dense-analysis/ale'
Plug 'tmsvg/pear-tree'

call plug#end()

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:pear_tree_repeatable_expand = 0

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
