-- Basics
vim.opt.shortmess:append({ I = true })      -- Don't show intro message
vim.opt.number = true                       -- Enable line numbers
vim.opt.clipboard:append({ 'unnamedplus' }) -- Use the system clipboard

-- Spaces and tabs
vim.opt.expandtab = true -- Insert tabs instead of spaces when using the tab button
vim.opt.softtabstop = 4  -- Size of tabs; coupled with expandtab -> number of spaces
vim.opt.tabstop = 4      -- Visual size of tab characters
vim.opt.shiftwidth = 4   -- How many columns of text are indented with >> or << (or =G)

-- Key mappings
vim.keymap.set('n', '<CR>', ':noh<CR><CR>') -- "Dismiss" search results
vim.keymap.set('n', '<S-u>', '<C-r>')       -- Redo
