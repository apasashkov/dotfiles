set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
"
" " Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
"

Plugin 'scrooloose/nerdtree'
Plugin 'jpo/vim-railscasts-theme'
Plugin  'scrooloose/nerdcommenter'
Plugin 'alvan/vim-closetag'   "html tag closer
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" change the mapleader from \ to ,
let mapleader="\<Space>"

syntax on
syntax enable     "enable syntax processing
set smarttab

set tabstop=4     "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set relativenumber " relative numbers
set showcmd       "show command in bottom bar
set wildmenu	  "visual autocomplete
set ruler		  "show current p osition
set cmdheight=2   "height of command bar
set ignorecase    " ignore case when searching
set smartcase     " smart case when searching


set incsearch	  "incremental search
set nohlsearch 	  "highlighting search

:inoremap jk <Esc>
:vnoremap jk <Esc>


"----------------------Python

"nnoremap <F5> <esc>:w<enter>:!%:p<enter>
"inoremap <F5> <esc>:w<enter>:!%:p<enter>



nnoremap <silent> <F5> :w<enter>:!clear;python %<CR>
inoremap <silent> <F5>  <esc> :w<enter>:!clear;python %<CR>

"nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
color railscasts


"-------- powerline installation to vim

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

:set noshowmode 
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
"-----------------------------------------------------------------------------
