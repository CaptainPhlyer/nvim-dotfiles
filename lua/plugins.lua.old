return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	--other packages go here
	--vimtex
	use 'lervag/vimtex'

	use ({
		"neovim/nvim-lspconfig",
	})

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
	"williamboman/mason.nvim",
	run = ":MasonUpdate", -- :MasonUpdate updates registry contents
	requires = {"williamboman/mason-lspconfig.nvim",}
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("nvim-tree").setup {}
		end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use { "ellisonleao/gruvbox.nvim" }
	use { "SirVer/ultisnips" }
	use {'hrsh7th/nvim-cmp'}
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'hrsh7th/cmp-omni'}
	use {'hrsh7th/cmp-path'}
	use {'quangnguyen30192/cmp-nvim-ultisnips'}
	use {
	  'tanvirtin/vgit.nvim',
		requires = {
		'nvim-lua/plenary.nvim'
	  },
	  config= function()
		require('vgit').setup{}
	  end
	}
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use {"codethread/qmk.nvim"}
end)
