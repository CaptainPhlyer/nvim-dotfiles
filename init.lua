vim.cmd 'filetype plugin indent on'
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
require("ef-configuration")
require("scheme")
--LuaLine setup
require("lualine-config")

--colorscheme setup
--require("gruvbox-config")
--vim.cmd [[colorscheme pink-panic]]

--LSP configuration
require("lsp-configuration")


