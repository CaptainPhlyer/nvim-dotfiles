vim.cmd 'filetype plugin indent on'
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- python virtual environment
vim.g.python3_host_prog = "~/venvs/nvim/bin/python"


require('plugins')
require('keybinds')
--Latex disable treesitter for vimtex
require 'nvim-treesitter.configs'.setup {
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
