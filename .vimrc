" editing features
set number
set mouse=a
syntax on
set tabstop=4
colorscheme delek
set shiftwidth=4
set expandtab
set incsearch
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000

au BufNewFile,BufRead *.py
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set shiftwidth=4 |
		\ set expandtab |
		\ set autoindent |
		\ set fileformat=unix |
		\ let python_highlight_all = 1

au BufNewFile,BufRead *.c
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set autoindent

au BufNewFile,BufRead *.cpp
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set autoindent
