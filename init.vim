"""""""""""""""""""""""""""""""""""
" cp init.vim ~/.config/nvim/init.vim
"""""""""""""""""""""""""""""""""""
" Manage Plugins (using vim-plug)
"  :Plug<>
" vimawesome.com is where it is at
"""""""""""""""""""""""""""""""""""
call plug#begin()

" Basics
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Markdown / Writting
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'

" Git Support
Plug 'tpope/vim-fugitive'

" Theme / Interface
Plug 'ajh17/Spacegray.vim'
Plug 'altercation/vim-colors-solarized'

"Programming
Plug 'scrooloose/syntastic'
"Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'Townk/vim-autoclose'
Plug 'mattn/emmet-vim'
"Plug 'janko-m/vim-test'
"Plug 'maksimr/vim-jsbeautify'

" ALE eslinter
"Plug 'w0rp/ale'" For html

" Place deoplete first, then autocomplete-flow
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'wokalski/autocomplete-flow'
" You will also need the following for function argument completion:
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'

call plug#end()
"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""

" Other options
set nocompatible
syntax enable
set nowrap
set encoding=utf8
filetype plugin indent on

colorscheme desert

"" I like tabs to be spaces, specifically 4ofiletype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set softtabstop=0
set expandtab
set smarttab

"" Unless we are programming, in which case
autocmd Filetype html setlocal ts=2 sw=2 expandtab smarttab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab smarttab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab smarttab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab smarttab

""
" configure vim-airline
""
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" add support for c++-11 extensions
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Show linenumbers
set number

" Enable deoplete
let g:deoplete#enable_at_startup = 1

" Mappings configuration
map <C-n> :NERDTreeToggle<CR>

