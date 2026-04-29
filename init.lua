vim.cmd 'filetype plugin indent on'
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- python virtual environment
vim.g.python3_host_prog = "~/venvs/nvim/bin/python"

-- General vim options
vim.o.relativenumber = true
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
vim.o.breakindent = true

-- Enable undo/redo changes even after closing and reopening a file
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 5

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

require('plugins')
require('keybinds')
--Latex disable treesitter for vimtex
require 'nvim-treesitter'.setup {
       ignore_install = { "latex" },
       -- more stuff here
     }
--ef colorscheme theme config 
--require("ef-configuration")
require("scheme")
--LuaLine setup
require("lualine-config")

--colorscheme setup
--require("gruvbox-config")
--require ("plugins/dankcolors")

--LSP configuration
require("lsp-configuration")
-- colourrr
require("ef-configuration")

-- telescope
require("telescope-config")

-- luasnips
require("luasnips-config")

