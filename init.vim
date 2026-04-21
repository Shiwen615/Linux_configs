:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set background=dark
:set termguicolors
" :set syntax=on
:set splitright
:set splitbelow
" nvim copy to system clipboard
:set clipboard+=unnamedplus
" :set guicursor=i:ver1
" error message stay longer
" :set guiheadroom=0
set updatetime=100

:set completeopt=menuone,noinsert " For No Previews

call plug#begin('~/.local/share/nvim/site/autoload')
Plug 'http://github.com/tpope/vim-surround' " Surrounding cs) ds) yss)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " tokyonight theme
Plug 'tribela/vim-transparent' " Background transparent
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'https://github.com/psliwka/vim-smoothie' "Smooth scrolling
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/tanvirtin/monokai.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
" Plug 'petertriho/nvim-scrollbar'
Plug 'mhinz/vim-signify'
call plug#end()


set encoding=UTF-8

" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>

nnoremap <C-p> :Files<CR>

nmap <F8> :TagbarToggle<CR>

:colorscheme monokai_soda 
:highlight LineNr guifg=green

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$']
let g:python3_host_prog = '/usr/bin/python3'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
