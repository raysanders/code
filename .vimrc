" A few interesting hacks courtesy of Amir Salihefendic
" ( https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim )

" Sets how many lines of history VIM has to remember
set history=100

filetype on
syntax on

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
