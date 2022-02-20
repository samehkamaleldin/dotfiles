" ================================================
set nocompatible        " be iMproved, required
filetype off            " required
" ================================================
syntax on
set number
" ================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ================================================
Plugin 'VundleVim/Vundle.vim'
" ================================================
Plugin 'tpope/vim-fugitive'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" ================================================
call vundle#end()            " required
filetype plugin indent on    " required
" ================================================
colorscheme torte

let g:airline#extensions#tabline#enabled = 1
" ================================================
