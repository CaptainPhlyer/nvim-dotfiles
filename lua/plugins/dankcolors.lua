return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#17120e',
				base01 = '#17120e',
				base02 = '#a39c96',
				base03 = '#a39c96',
				base04 = '#fff7ef',
				base05 = '#fffbf8',
				base06 = '#fffbf8',
				base07 = '#fffbf8',
				base08 = '#ffa19b',
				base09 = '#ffa19b',
				base0A = '#ffc68d',
				base0B = '#b1ffa1',
				base0C = '#ffe0c3',
				base0D = '#ffc68d',
				base0E = '#ffd0a1',
				base0F = '#ffd0a1',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#a39c96',
				fg = '#fffbf8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ffc68d',
				fg = '#17120e',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#a39c96' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffe0c3', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffd0a1',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ffc68d',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ffc68d',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffe0c3',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#b1ffa1',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#fff7ef' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#fff7ef' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#a39c96',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
