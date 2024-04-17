vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
--these guys are there to map jumping between windows a little easier

map('n', '<C-h>', '<C-w>h', {noremap=true, silent=false})
map('n', '<C-j>', '<C-w>j', {noremap=true, silent=false})
map('n', '<C-k>', '<C-w>k', {noremap=true, silent=false})
map('n', '<C-l>', '<C-w>l', {noremap=true, silent=false})

-- Shortcuts
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Delete text
vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')
vim.keymap.set('n', '<leader><space>', '<cmd>buffers<cr>:buffer<Space>')
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

--ToggleTerm

vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<cr>')
