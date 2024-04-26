set nocompatible " Break compatibility with vi
set noswapfile " Disable swap file creation
syntax on " Turn on syntax highlighting
set expandtab " Insert tabs instead of spaces when using the tab button
set softtabstop=2 " Size of tabs -- coupled with expandtab -> number of spaces
set tabstop=2 " Visual size of tab characters
set shiftwidth=2 " How many columns of text are indented with >> or << (or =G)
filetype plugin on " Enable loading of plugin files for specific file types
filetype indent on " Enable smart indentation based on filetype
set ruler " Show ruler (line and column number, position in file)
set hlsearch " Highlight all search matches
set noignorecase " Case-sensitive search
set backspace=indent,eol,start " Allow backspacing over many things (in insert mode)
set shortmess+=I " Don't show intro message
