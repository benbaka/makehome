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
    autocmd FileType ant setl sw=2 | setl sts=2
else
    set autoindent
endif

iab lc;; Lorenzo Cabrini
iab lcm;; Lorenzo Cabrini <lorenzo.cabrini@gmail.com>
iab alc;; Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

