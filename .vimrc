set nocompatible " Break compatibility with vi


" Plugins
" ----

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'


" Settings
" ----

filetype plugin on " Enable loading of plugin files for specific file types
filetype indent on " Enable smart indentation based on filetype
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

" Insert newlines without changing modes or moving cursor
nnoremap <leader>n mNo<Esc>`N
nnoremap <leader>i mNO<Esc>`N
nnoremap <leader>j o<Esc>
nnoremap <leader>k O<Esc>

" Toggle line numbers
nnoremap <silent> <leader>3 :set nu!<CR>

" Disable search term highlighting until next search
nnoremap <silent> <leader>h :noh<CR>

" Toggle display of invisibles
nnoremap <silent> <leader>l :set list!<CR>

" Tab management
"
" J -> go to prev tab (set default J to C-j)
" K -> go to next tab (set default K to C-k)
" <leader>W -> go to first tab
" <leader>E -> go to last tab
" <leader>mw -> move tab left (wrap to last if at first)
" <leader>me -> move tab right (wrap to first if at last)
" <leader>mW -> move tab to first
" <leader>mE -> move tab to last
" <leader>r -> go to previous tab
" <leader>T -> open last closed tab

nnoremap <C-J> J
nnoremap <C-K> K
nnoremap <silent> J :tabprevious<CR>
nnoremap <silent> K :tabnext<CR>

nnoremap <silent> <leader>W :tabfirst<CR>
nnoremap <silent> <leader>E :tablast<CR>
nnoremap <silent> <leader>mw :execute 'silent! tabmove ' . (tabpagenr() == 1 ? tabpagenr('$') - 1 : tabpagenr() - 2)<CR>
nnoremap <silent> <leader>me :execute 'silent! tabmove ' . (tabpagenr() % tabpagenr('$'))<CR>
nnoremap <silent> <leader>mW :tabmove 0<CR>
nnoremap <silent> <leader>mE :tabmove<CR>

let g:closed_windows=[]

function! OnTabLeave()
  " Set previous previous tab
  if exists('g:previous_tab')
    let g:previous_previous_tab=g:previous_tab
  endif
  " Set previous tab
  let g:previous_tab=tabpagenr()
endfunction

function! OnBufWinLeave()
  " Push closed tab's file's path onto g:closed_windows stack
  call insert(g:closed_windows, expand("<afile>:p:gs/ /\\\\ /"))

  " Set previous tab to previous previous tab since previous tab was closed
  if exists('g:previous_previous_tab')
    let g:previous_tab=g:previous_previous_tab
  endif
endfunction

function! GoToPreviousTab()
  if exists('g:previous_tab')
    :execute 'tabn ' . g:previous_tab
  endif
endfunction

function! OpenLastClosedWindow()
  if !empty(g:closed_windows)
    " pop (from front)
    :execute 'tabe ' . remove(g:closed_windows, 0)
  endif
endfunction

if has('autocmd')
  au TabLeave * call OnTabLeave()
  au BufWinLeave * call OnBufWinLeave()

  " Recognize *.md files as Markdown
  au BufRead,BufNewFile *.md set filetype=markdown
  au BufRead,BufNewFile *.md set softtabstop=4
  au BufRead,BufNewFile *.md set tabstop=4
  au BufRead,BufNewFile *.md set shiftwidth=4
endif

nnoremap <silent> <leader>r :execute GoToPreviousTab()<CR>
nnoremap <silent> <leader>T :execute OpenLastClosedWindow()<CR>


" Plugin settings
" ----

" NERDCommenter
let g:NERDSpaceDelims=1 " Pad comment delimiters with spaces where reasonable
