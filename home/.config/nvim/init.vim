set shortmess+=I " Don't show intro message
set number " Enable line numbers
set clipboard+=unnamedplus " Use the system clipboard

" Spaces and tabs
set expandtab " Insert tabs instead of spaces when using the tab button
set softtabstop=4 " Size of tabs -- coupled with expandtab -> number of spaces
set tabstop=4 " Visual size of tab characters
set shiftwidth=4 " How many columns of text are indented with >> or << (or =G)

" Dismiss highlighted search results 
nnoremap <CR> :noh<CR><CR>
