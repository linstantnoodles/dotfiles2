" Vim Run Command file
" @author Alan

" <<< #Turn down for WHAT?! >>>

" Prevent Vim features from poofin'
set nocompatible

" <<< #Everyday I'm Vundle'ing >>>

" Temporarily off for the vundle
filetype off
" Window uses 'vimfiles' ... weirdo
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
" Lock and load son
call vundle#begin(path)
" Shout out to Mr. G
Plugin 'gmarik/Vundle.vim'
" A helluva wardrobe
Plugin 'flazz/vim-colorschemes'
call vundle#end()

" <<< #Coppin my style >>>

" Use xterm terminal emulator
set term=xterm
" Use 256 color map
set t_Co=256
" Set windows color code escape sequences
if has("win32")
	let &t_AB="\e[48;5;%dm"
	let &t_AF="\e[38;5;%dm"
endif
" Dress me up baby
colorscheme zenburn

" <<< #Dot t to the x to the .txt >>>

" The file type trifecta
filetype plugin indent on
" Highlight syntax
syntax on

" <<< #Spaces 4 L1F3 <3 >>>

" Number of columns per tab
set tabstop=4
" Use space in place of a tab char
set expandtab
" Number of spaces when indenting
set shiftwidth=4
set softtabstop=4
" Ruby aka Mary Poppins
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
" JavaScript aka Po the Kung Fu Panda
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" <<< #Uhh, where my strings at?! (What!) >>>

" Highlight matches b/c blind
set hlsearch
" I b matchin' when you b typin'
set incsearch
" Case sensitive only when pattern contains uPpercase ;)
set ignorecase
set smartcase

" <<< #Rewiring them keys >>>

" Set max key seq delay b/c we ain't got all day
set timeout timeoutlen=1000
" No escapin' just do the double-j
imap jj <esc>

" Show line numbers
set number
" Allow backspace
set backspace=2

