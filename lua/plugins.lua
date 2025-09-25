local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  "folke/lazy.nvim",
  "folke/neodev.nvim",
  "neovim/nvim-lspconfig",
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {"williamboman/mason.nvim", dependencies = "williamboman/mason-lspconfig.nvim"},
  {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
	  "nvim-tree/nvim-web-devicons",
	},
	config = function()
	  require("nvim-tree").setup {}
	end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  --{"ellisonleao/gruvbox.nvim", priority=1000, config=true},
  "SirVer/ultisnips",
  {
	'hrsh7th/nvim-cmp',
	commit = "b356f2c",
	pin = true,
  },
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-omni',
  'hrsh7th/cmp-path',
  'quangnguyen30192/cmp-nvim-ultisnips',
  {
	"NeogitOrg/neogit",
	dependencies = {
	  "nvim-lua/plenary.nvim",         -- required
	  "sindrets/diffview.nvim",        -- optional - Diff integration

	  -- Only one of these is needed, not both.
	  "nvim-telescope/telescope.nvim", -- optional
	},
	config = true
  },
  {
	'akinsho/toggleterm.nvim', version = "*", config=true,
  },
  {
	"codethread/qmk.nvim",
	config = function()
	   ---@type qmk.UserConfig
        local conf = {
            name = 'LAYOUT',
            layout = {
                '_ x x x x x x _ _ _ _ _ x x x x x x',
                '_ x x x x x x _ _ _ _ _ x x x x x x',
                '_ x x x x x x x x _ x x x x x x x x',
                '_ _ _ _ x x x x x _ x x x x x _ _ _',
            }
        }
        require('qmk').setup(conf)
	  end,
  },
  { "oonamo/ef-themes.nvim" },
  {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = true,
  },
})
