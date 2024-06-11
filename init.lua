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
--LuaLine setup
require("lualine-config")

--colorscheme setup
require("gruvbox-config")

--LSP configuration
require("lsp-configuration")


