set number
set mouse=a
set tabstop=4
colorscheme evening
syntax on

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
