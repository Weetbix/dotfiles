" Don't try to be compatible with vi
set nocompatible
filetype plugin on

" Enable syntax highlighting
syntax enable

" Enable line numbers
set number
set ruler
"always show the status bar
set laststatus=2
colorscheme monokai

" Blink cursor on error instead of bell
set visualbell

" Cursor options
set scrolloff=3
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase

let g:vimwiki_list = [{'path': '~/Google Drive/vimwiki/', 'path_html': '~/htmlwiki', 'syntax': 'markdown', 'ext' : '.md'}]
