" --------------------------------
"	plug stuff

call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/wal.vim'

call plug#end()

" ---------------------------------

" ---------------------------------
"	vim configuration (just some mashup of vimrc's)

" returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE   '
    endif
    return ''
endfunction

" don't try to be vi compatible
set nocompatible

" rendering
set ttyfast

" set history
set history=100

" enable filetype plugins
filetype plugin on
filetype indent on

" set autoread
set autoread

" when using a map leader, you can do extra key combinations
" for example, <leader>w saves the current file

let mapleader = ","

" fast saving
nmap <leader>w :w!<cr>

" set 7 lines to the cursor - when moving vertically using j/k
set so=7

" avoid garbled chars in chinese language windows os
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" turn on the wild menu
set wildmenu

" always show current pos
set ruler

" height of the command bar
set cmdheight=2

" a buffer becomes hidden when it's abandoned
set hid

" configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" ignore case when searching
set ignorecase

" when searching, try to be smart about cases
set smartcase

" highlight search results
set hlsearch

" makes search act like search in modern browsers
set incsearch

" don't redraw while executing macros (good performance config)
set lazyredraw

" for regex turn magic on
set magic

" show matching brackets when text indicator is over them
set showmatch

" how many tenths of a second to blink when matching brackets
set mat=2

" no sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" add extra margin to the left
set foldcolumn=1

" enable syntax highlighting
syntax enable

" colorscheme (pywaled)
colorscheme wal

" set utf-8
set encoding=utf8

" use unix as the standard file type
set ffs=unix,dos,mac

" turn backup off
set nobackup
set nowb
set noswapfile

" use spaces instead of tabs (yes!)
set expandtab

" be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" linebreak on 500 chars
set lbr
set tw=500

set ai " auto indent
set si " smart indent
set wrap " wrap lines

" always show the status line
set laststatus=2

" format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \line:\ %l\ \ column:\ %c

" remap vim 0 to first non-blank char
map 0 ^

" ---------------------------------
