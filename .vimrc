" Load Pathogen
execute pathogen#infect()

" remap command mode & leader key
let mapleader = ","

" file setting
set nocompatible
set noswapfile

filetype on
filetype indent on
filetype plugin on

set encoding=utf-8
scriptencoding utf-8

" auto source .vimrc when save
autocmd! BufWritePost $MYVIMRC source $MYVIMRC
" auto backup .vimrc into git repo
autocmd! BufWrite $MYVIMRC :write! ~/.vim/.vimrc
