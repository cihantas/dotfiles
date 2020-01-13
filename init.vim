let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

"
" Plugins
"
call plug#begin('~/.vim/plugged')

"
" Color Schemes
"
Plug 'morhetz/gruvbox'
" Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim'
Plug 'cihantas/vim-citylights'
Plug 'whatyouhide/vim-gotham'
Plug 'lifepillar/vim-solarized8'
Plug 'cormacrelf/vim-colors-github'

"
" Other
"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'mattn/emmet-vim'

Plug 'pangloss/vim-javascript', { 'for': ['js', 'html', 'json'] }

Plug 'posva/vim-vue', { 'for': 'vue' }

" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

" PHP
" Plug 'tobyS/pdv'
" Plug 'StanAngeloff/php.vim', { 'for': 'php' }
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

" Elixir
Plug 'elixir-editors/vim-elixir', { 'for': 'ex' }
Plug 'slashmili/alchemist.vim', { 'for': 'ex' }

call plug#end()

" Be improved.
set nocompatible

" Enable syntax highlighting.
syntax enable

" set guifont=SF\ Mono:h14

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

" Go-specific spacing.
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
" ts - show existing tab with 4 spaces width
" sw - when indenting with '>', use 4 spaces width
" sts - control <tab> and <bs> keys to match tabstop

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

" Allow backspace to delete indentation and inserted text.
set backspace=indent,eol,start
" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"         stop once at the start of insert.

" Add space around lines (to modify line height).
set linespace=3

" Open terminal emualator.
nnoremap <silent> <leader>sh :terminal<CR>


" NERDTree
map <C-n> :NERDTreeToggle<CR>


" CTRL-P
" Don't index node_modules and vendor folder in fuzzy search.
set wildignore+=*/node_modules/*,*/vendor/*,*/deps/*

colorscheme solarized8_flat

" Lightline
let g:lightline = { 'colorscheme': 'solarized' }


" Go
"
" Run 'goimports' on your current file on every save.
let g:go_fmt_command = "goimports"

" Status line types/signatures.
let g:go_auto_type_info = 1


" Prettier
" 
" Autoformat following types on save without @format.
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier


" Deoplete
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"let b:deoplete_disable_auto_complete = 1
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('omni_patterns', {
\ 'go': '[^. *\t]\.\w*',
\})

" Use ALE and also some plugin 'foobar' as completion sources for all code.
" call deoplete#custom#option('sources', {
" \ '_': ['ale'],
" \})


" ALE
let g:ale_fix_on_save = 1
" set completeopt=menu,menuone,preview,noselect,noinsert
" let g:ale_completion_enabled = 1
" let g:ale_linters = {}
" let g:ale_linters.elixir = ['elixir-ls', 'credo']
" let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
" let g:ale_elixir_elixir_ls_release = '/Users/grey/Downloads/elixir-ls/rel'
" let g:ale_fixers.elixir = ['mix_format']
" let g:ale_sign_column_always = 1

