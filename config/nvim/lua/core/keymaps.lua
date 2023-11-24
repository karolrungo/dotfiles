vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap
-- clear search highlight
keymap.set('n', '<leader> ', ':nohlsearch<CR>')
-- navigate bufers
keymap.set('n', '[b', ':bprevious<CR>')
keymap.set('n', ']b', ':bnext<CR>')
-- dont save a deleted character into register
keymap.set('n', 'x', '"_x')
-- increment & decrement
keymap.set('n', '<leader>+', '<C-a>')
keymap.set('n', '<leader>-', '<C-x>')
-- split
keymap.set('n', '<leader>s\\', '<C-w>v')
keymap.set('n', '<leader>s-', '<C-w>s')
keymap.set('n', '<leader>se', '<C-w>=')
keymap.set('n', '<leader>sx', ':close<CR>')
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>')
-- toggle nvim-tree
keymap.set('n','<C-n>', ':NvimTreeFindFileToggle<CR>')
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
