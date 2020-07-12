" Settings
" ----

set nocompatible " Break compatibility with vi
filetype plugin on " Enable loading of plugin files for specific file types
filetype indent on " Enable smart indentation based on filetype
colorscheme twilight256
syntax on " Turn on syntax highlighting
set ruler " Show ruler (line and column number, position in file)
set hlsearch " Highlight all search matches
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

" Enable saving with :W (common typo of :w)
cnoreabbrev W w

" Easy saving
nnoremap <leader><leader> :w<CR>

" Close
nnoremap <leader>w :q<CR>

" Insert newlines without changing modes or moving cursor
nnoremap <leader>n mNo<Esc>`N
nnoremap <leader>i mNO<Esc>`N

" Toggle line numbers
nnoremap <silent> <leader>3 :set nu!<CR>

" Disable search term highlighting until next search
nnoremap <silent> <leader>h :noh<CR>

" Toggle display of invisibles
nnoremap <silent> <leader>l :set list!<CR>

" Open all buffers in separate tabs
nnoremap <silent> <leader>T :tab all<CR>


" Tab management
"
" J -> go to prev tab (set default J to C-j)
" K -> go to next tab (set default K to C-k)
" <leader>[1-9] -> go to tab number [1-9]
" <leader>0 -> go to last tab
" <leader>j -> move tab left (wrap to last if at first)
" <leader>k -> move tab right (wrap to first if at last)
" <leader>J -> move tab to first
" <leader>K -> move tab to last
" <leader>t -> open last closed tab

nnoremap <C-J> J
nnoremap <C-K> K
nnoremap J gT
nnoremap K gt
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>

nnoremap <silent> <leader>j :execute 'silent! tabmove ' . (tabpagenr() == 1 ? tabpagenr('$') : tabpagenr() - 2)<CR>
nnoremap <silent> <leader>k :execute 'silent! tabmove ' . (tabpagenr() == tabpagenr('$') ? 0 : (tabpagenr() + 1))<CR>
nnoremap <silent> <leader>J :tabmove 0<CR>
nnoremap <silent> <leader>K :tabmove<CR>

" Stack of closed windows
let g:closed_windows=[]

function! OnBufWinLeave()
  " Push closed tab's file path onto g:closed_windows stack
  call insert(g:closed_windows, expand("<afile>:p:gs/ /\\\\ /"))
endfunction

function! OpenLastClosedWindow()
  if !empty(g:closed_windows)
    " Pop file path from g:closed_windows stack + open it
    :execute 'tabe ' . remove(g:closed_windows, 0)
  endif
endfunction

if has('autocmd')
  au BufWinLeave * call OnBufWinLeave()

  " Recognize *.md files as Markdown
  au BufRead,BufNewFile *.md set filetype=markdown
  au BufRead,BufNewFile *.md set softtabstop=4
  au BufRead,BufNewFile *.md set tabstop=4
  au BufRead,BufNewFile *.md set shiftwidth=4
endif

nnoremap <silent> <leader>t :execute OpenLastClosedWindow()<CR>


" Plugin settings
" ----

" NERDCommenter
let g:NERDSpaceDelims=1 " Pad comment delimiters with spaces where reasonable
