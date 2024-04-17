require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pylsp", "clangd", "bashls"}
})
require("cmp-config")
local capabilities = require"cmp_nvim_lsp".default_capabilities()

local on_attach = function(_,_)
	local map = vim.api.nvim_set_keymap
	map('n', '<leader>rn', vim.lsp.buf.rename, {})
	map('n', '<leader>ca', vim.lsp.buf.code_action, {})

	map('n', 'gd', vim.lsp.buf.definition,{})
	map('n', 'gi', vim.lsp.buf.implementation,{})
end

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}
require("lspconfig").pylsp.setup {
	on_attach = on_attach,
	capabilities = capabilities
}
require("lspconfig").bashls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}
require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
