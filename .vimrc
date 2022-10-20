" Settings
" ----

set nocompatible " Break compatibility with vi
filetype plugin on " Enable loading of plugin files for specific file types
filetype indent on " Enable smart indentation based on filetype
syntax on " Turn on syntax highlighting
set ruler " Show ruler (line and column number, position in file)
set hlsearch " Highlight all search matches
set noignorecase " Case-sensitive search
set expandtab " Insert tabs instead of spaces when using the tab button
set softtabstop=2 " Size of tabs -- coupled with expandtab -> number of spaces
set tabstop=2 " Visual size of tab characters
set shiftwidth=2 " How many columns of text are indented with >> or << (or =G)
set autoindent " Maintain indent from previous row
set backspace=indent,eol,start " Allow backspacing over many things (in insert mode)
set complete=.,t " Make autocomplete fast by restricting to current buffer and tags file
set noswapfile " Disable swap file creation
set shortmess+=I " Don't show intro message
set iskeyword+=i " Consider hyphens to be part of keywords/identifiers
set showcmd " Show more command feedback
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ " Show lots of invisibles (when that mode is on)
set tabpagemax=50 " Set max number of tabs that can be exploded out


" Key bindings
" ----

nnoremap , ;
let mapleader=";"

set notimeout " Do not time out in the middle of custom mappings
set ttimeout " ...but still time out on key codes
set ttimeoutlen=100 " ...after 100 milliseconds

" Y -> yank to EOL
" This is more consistent with other commands (e.g., D -> delete to EOL, C -> change to EOL) than the default behavior: yank the whole line (covered by yy)
nnoremap Y y$

" Toggle line numbers
nnoremap <silent> <leader>m :set nu!<CR>

" Disable search term highlighting until next search
nnoremap <silent> <leader>h :noh<CR>
