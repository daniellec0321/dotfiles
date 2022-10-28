" editing features
set number
set mouse=a
syntax on
set tabstop=4
set autoindent
colorscheme delek
set shiftwidth=4
set incsearch
set showcmd
set showmode
set hlsearch
set history=1000

au BufNewFile,BufRead *.py
		\ set softtabstop=4 |
		\ set shiftwidth=4 |
		\ set expandtab |
		\ set autoindent |
		\ set fileformat=unix |
		\ let python_highlight_all = 1
