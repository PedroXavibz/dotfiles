"_-_-_-_-_-_-_-_-_-_- [INDENT OPTIONS] _-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

" New line inherit identation of previous lines
set autoindent

" Convert tabs to space
set expandtab

" Enable indentation rules that are file-type specific
filetype indent on

" When shifting lines, round the identation to the nearest
set shiftround

" When shifting, ident using 4 spaces
set shiftwidth=4

" Inset "tabstop" number of spaces when "tab" key is pressed
set smarttab

" Ident using 4 spaces
set tabstop=4

"_-_-_-_-_-_-_-_-_-_- [SEARCH OPTIONS] _-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

" Enable search highlighting
set hlsearch

" Ignore case when searching
set ignorecase

" Incremental search that shows partial matches
set incsearch

" Automatically switch search to case-sensitive when search query
" contains an uppercase letter
set smartcase

"_-_-_-_-_-_-_-_-_-_- [PERFORMANCE OPTIONS] _-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

" Limit the files searched for auto-completes
set complete-=i

" Don't update screen during macro and script execution
set lazyredraw

"_-_-_-_-_-_-_-_-_-_- [TEXT RENDERING OPTIONS] _-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

" Always try show a paragraph last line
set display+=lastline

" Use an enconding that supports unicode
set encoding=utf-8

" Avoid wrapping a line in the middle of a word
set linebreak

" The number of screen lines to keep above and below the cursor
set scrolloff=1

" The number of screen columns to keep to the left and right of the
" cursor
set sidescrolloff=5

" Enable syntax highlight
syntax enable

" Enable line wrapping
set wrap

set nocompatible

"_-_-_-_-_-_-_-_-_-_- [USER INTERFACE OPTIONS] _-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

" Always display status bar
set laststatus=2

" Don't show mode like 'insert'
set noshowmode

" Always show cursor position
set ruler

" Netrw file explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'

" Display command line's tab complete options as a menu
set wildmenu

" Minimium number of tab pages that can be opened from the command line
set tabpagemax=50

" Highlight the line currently under cursor
" set cursorline

" Show line numbers on the side bar
set number

" Show line on the side bar in relative number
set relativenumber

" Disable beep on error
set noerrorbells

" Enable mouse for scrolling and resizing
set mouse=a

" Set window title, refleting the file currently being edited
set title

" Use colors that suit a dark background
set background=dark

" sets foreground color (ANSI, true-color mode)
let &t_8f = "\e[38;2;%lu;%lu;%lum"

" sets background color (ANSI, true-color mode)
let &t_8b = "\e[48;2;%lu;%lu;%lum"
"
set termguicolors

"_-_-_-_-_-_-_-_-_-_- [CODE FOLDING OPTIONS] _-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

" Fold based on indentation levels
" set foldmethod=indent

" Only fold up to three nested levels
" set foldnestmax=3

" Disable folding by default
" set nofoldenable

"_-_-_-_-_-_-_-_-_-_- [MISCELLANEOUS OPTIONS] _-_-_-_-_-_-_-_-_-_-
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

" Automatically re-read files if unmodified inside vim
set autoread

" Allow backspacing over indentation, line breaks and insertion start
" set backspace=indent

" Directory to store backup files
set backupdir=~/.cache/vim/backup

" Display a confirmation dialog when closing an unsaved file
set confirm

" Delete comment characters whe joining line
set formatoptions+=j

" Increase the undo limit
set history=1000

" Directory to store swap files
set dir=~/.cache/vim/swap

" Disbale swap file
set noswapfile

" Save in clipboard
set clipboard=unnamedplus

