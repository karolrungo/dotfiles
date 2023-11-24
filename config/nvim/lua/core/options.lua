local opt = vim.opt

-- line numbers
opt.number = true
-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
-- line wrapping 
opt.wrap = false
--seach settings
opt.ignorecase = true
opt.smartcase = true
-- cursor line
opt.cursorline = true
-- appearance
opt.termguicolors = true
opt.signcolumn = 'yes'
-- backspace
opt.backspace = 'indent,eol,start'
-- use system clipboard
opt.clipboard:append('unnamedplus')
-- split window
opt.splitright = true
opt.splitbelow = true
-- treat - as a part of word
opt.iskeyword:append('-')

vim.cmd [[ set noswapfile ]]
