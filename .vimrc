" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" override escape key with jj
inoremap jj <esc>

" override exit and save with zz
nnoremap zz ZZ

" override :w with ww
nnoremap ww :w<return>

" override go to start/end of line
nnoremap a 0
nnoremap l $

" auto-close characters
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>

inoremap <expr> <CR> search('{\%#}', 'n') ? "\<CR>\<CR>\<Up>\<C-f>" : "\<CR>"

if has("autocmd")
      " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

" editing features
set number
set mouse=a

syntax on
colorscheme delek

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set incsearch
set showcmd
set showmode
set hlsearch
set history=1000

" set undo history to be pernament
set undofile
set undodir=~/.vim/undodir

au BufNewFile,BufRead *.py
		\ set fileformat=unix |
		\ let python_highlight_all = 1

let g:loaded_matchparen=1
