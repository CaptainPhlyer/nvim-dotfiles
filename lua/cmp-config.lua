local cmp = require'cmp'
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
		vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	window = {
		--completion = cmp.config.window.bordered(),
		--documentation = cmp.config.window.bordered()
	},
	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'ultisnips'},
		{name = 'path' },
		--{name = 'omni'}
	}, {
		{ name = 'buffer'},
	}),
	mapping = {
        ["<Tab>"] = cmp.mapping(
          function(fallback)
		if cmp.visible() then
			cmp.select_next_item()
		else
			cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
		end
          end,
          { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
        ),
        ["<S-Tab>"] = cmp.mapping(
          function(fallback)
		if cmp.visible() then
		  	cmp.select_next_item()
		else
			cmp_ultisnips_mappings.jump_backwards(fallback)
		end
          end,
          { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
        ),
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false}), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      },
	})

cmp.setup.filetype("tex", {
	sources = {
		{ name = 'omni'},
		{ name = 'ultisnips'},
		{ name = 'path'},
	}
})

--vim.g["UltiSnipsExpandTrigger"]       = '<Tab>'    -- use Tab to expand snippets
--vim.g["UltiSnipsJumpForwardTrigger"]  = '<Tab>'   -- use Tab to move forward through tabstops
--vim.g["UltiSnipsJumpBackwardTrigger"] = '<S-Tab>'  -- use Shift-Tab to move backward through tabstops

vim.cmd "let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips']"
