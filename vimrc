call plug#begin('~/.vim/plugged')

" Color Schemes
Plug 'cihantas/vim-citylights'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'lifepillar/vim-solarized8'
Plug 'whatyouhide/vim-gotham'

Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

Plug 'pangloss/vim-javascript', { 'for': ['js', 'html', 'json'] }

call plug#end()

colorscheme solarized8_flat
set background=dark

" Be improved.
set nocompatible

" Enable syntax highlighting.
syntax enable

" Hide scrollbars, etc. in MacVim.
set guioptions=

" Show relative line numbers.
set number
set relativenumber

" Show rulers.
set colorcolumn=80,120

" Automatically indent lines.
set autoindent

" Flash screen instead of beep sound.
set visualbell

" Change how vim represents characters on the screen.
set encoding=utf-8

" Set the encoding of files written.
set fileencoding=utf-8
set fileencodings=utf-8

" Default for all other files.
set tabstop=4
set softtabstop=0
set shiftwidth=4

" Use spaces as tabs.
set expandtab

" Maintain undo history between sessions.
set undofile
set undodir=~/.vim/undodir

" Hardcore mode: Disable arrow keys.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Hide insert status, because we're using lightline.
set noshowmode

set bs=2

" Recognize file types, load its plugins and indent configuration.
filetype plugin indent on

" Add space around lines (to modify line height).
set linespace=2

" Open terminal emualator.
nnoremap <silent> <leader>sh :terminal<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Don't index node_modules and vendor folder in fuzzy search.
set wildignore+=*/node_modules/*,*/vendor/*,*/deps/*

" Lightline
let g:lightline = { 'colorscheme': 'solarized' }

