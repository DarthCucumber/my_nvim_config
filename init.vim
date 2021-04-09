call plug#begin()
Plug 'preservim/NERDTree'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'npm install'  }
Plug 'codota/tabnine-vim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set number
let mapleader=","
set timeout timeoutlen=1500
filetype plugin indent on
set tabstop=3
set shiftwidth=3
set expandtab
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'ctrlp'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'transparent'
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean-community'
let g:airline#extensions#tabline#enabled = 1
colorscheme material
