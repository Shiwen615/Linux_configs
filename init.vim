:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set background=dark

call plug#begin('~/.local/share/nvim/site/autoload')

Plug 'http://github.com/tpope/vim-surround' " Surrounding cs) ds) yss)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " tokyonight theme
Plug 'tribela/vim-transparent' " Background transparent

set encoding=UTF-8

call plug#end()

" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews
:colorscheme tokyonight 

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"