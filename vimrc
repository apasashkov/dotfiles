set nocompatible              " required
filetype off " required
filetype plugin indent on
" set the runtime path to include Vundle and initialize
"set rtp+=/home/anton/.vim/bundle/Vundle.vim
"call vundle#begin()
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
"Plugin 'gmarik/Vundle.vim'
"Plugin 'scrooloose/nerdtreee'
"Plugin 'jpo/vim-railscasts-theme'
"Plugin  'scrooloose/nerdcommenter'
"Plugin 'alvan/vim-closetag'   "html tag closer
" " All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required


"--------- change the mapleader from \ to ,
let mapleader="\<Space>"

"--------- Open nerd tree by leader+n
:map <Leader>n :NERDTreeToggle <cr>


"----- Leader +j - previous buffer,Leader+k - next buffer
map <Leader>j :bprev<Return>
map <Leader>k :bnext<Return>

"----- Leader + d  -  delete buffer
map <Leader>d :bd<Return>

"----- Leader + p/np  - paste/nopaste mode;
map <Leader>p :set paste<Return>
map <Leader>op :set nopaste<Return>
"----- Leader+s insert snippet
        :imap <Leader>s <Plug>snipMateNextOrTrigger
        :smap <Leader>s <Plug>snipMateNextOrTrigger

"-----basic options
syntax on
syntax enable     "enable syntax processing
set smarttab
    
set tabstop=2     "number of visual spaces per TAB
set expandtab	"enter spaces when tab is pressed
set softtabstop=2 "number of spaces in tab when editing
set autoindent
set shiftwidth=2  "size of an indent
set showcmd       "show command in bottom bar
set wildmenu	  "visual autocomplete
set ruler		  "show current p osition
set cmdheight=1   "height of command bar
set ignorecase    " ignore case when searching
set smartcase     " smart case when searching
set mouse=a " enable mouse in VIM
set ttyfast "needed for mouse in VIM
set number  "set line numbers
set noshowmode "disable default mode indicator (used only wiht POWERLINE)
set nowrap "display long lines as one line


set incsearch	  "incremental search
set nohlsearch 	  "highlighting search

"----copy to clipboard without line numbers
:se mouse+=a
  
:inoremap jk <Esc>
:vnoremap jk <Esc>

"----- Maps Alt-[h,j,k,l] to resizing a window split
execute "set <A-j>=\ej"
execute "set <A-h>=\eh"
execute "set <A-k>=\ek"
execute "set <A-l>=\el"
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

"------fast switch between window splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"----------------------Python

"nnoremap <silent> <F5> :w<enter>:!clear;python %<CR>
"inoremap <silent> <F5>  <esc> :w<enter>:!clear;python %<CR>

color railscasts


"-------- powerline installation to vim
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
 " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
"autocmd VimEnter * NERDTree
"-----------------------------------------------------------------------------
"--treat ejs as html
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
"---jumping among matching tags
runtime macros/matchit.vim
"----f7 to run node files from vim
map <F5> :w<enter>:call Run() <cr>
function Run()
    exec "! node %"
  endfunction
"---------------------------
"----- autoclose documentation preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"-----
execute pathogen#infect()
call pathogen#helptags()
