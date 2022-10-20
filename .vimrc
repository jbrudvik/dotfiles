" Settings
" ----

set nocompatible " Break compatibility with vi
filetype plugin on " Enable loading of plugin files for specific file types
filetype indent on " Enable smart indentation based on filetype
colorscheme twilight256
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

" Use system clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Cursor settings for macOS Terminal
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)


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

" Toggle display of invisibles
nnoremap <silent> <leader>l :set list!<CR>


" Plugins
" ----

call plug#begin('~/.vim-plug')
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Chiel92/vim-autoformat'
Plug 'cespare/vim-toml'
call plug#end()

" NERDCommenter
let g:NERDSpaceDelims=1 " Pad comment delimiters with spaces where reasonable
let g:NERDCustomDelimiters = { 'python': { 'left': '#', 'leftAlt': '#' } }

" vim-gitgutter
autocmd BufWritePost * GitGutter " Update on save
highlight! link SignColumn LineNr
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#005fd7 ctermfg=26
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Autoformat on save: Rust, Python, Go
au BufWrite *.rs,*.py,*.go :Autoformat
