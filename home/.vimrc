" Basics
set nocompatible " Break compatibility with vi
set noswapfile " Disable swap file creation
set shortmess+=I " Don't show intro message
set number " Show line numbers
set ruler " Show ruler (line and column number, position in file)
set hlsearch " Highlight all search matches
set noignorecase " Case-sensitive search
set backspace=indent,eol,start " Allow backspacing over many things (in insert mode)
set clipboard^=unnamed,unnamedplus " Use system clipboard

" Colors
syntax on " Turn on syntax highlighting
set termguicolors
let ayucolor="dark"
colorscheme ayu

" Tabs and indents
set expandtab " Insert tabs instead of spaces when using the tab button
set softtabstop=2 " Size of tabs -- coupled with expandtab -> number of spaces
set tabstop=2 " Visual size of tab characters
set shiftwidth=2 " How many columns of text are indented with >> or << (or =G)
filetype indent on " Enable smart indentation based on filetype

" Use bar cursor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Key mappings
nnoremap Y y$ " Yank to end of line
