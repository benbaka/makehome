" Personal vim configuration file.
" Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

set nocompatible
set backspace=indent,eol,start
set tabstop=8
set shiftwidth=4
set softtabstop=4

if &t_Co > 2 || has("gui_running")
    syntax on
    colorscheme koehler
endif

if has("autocmd")
    filetype plugin indent on
else
    set autoindent
endif
