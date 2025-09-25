require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pylsp", "clangd", "bashls"}
})
require("cmp-config")
local capabilities = require"cmp_nvim_lsp".default_capabilities()

local on_attach = function(_,_)
    local map = vim.keymap.set
	map('n', '<leader>rn', vim.lsp.buf.rename, {})
	map('n', '<leader>ca', vim.lsp.buf.code_action, {})
	map('n', 'gd', vim.lsp.buf.definition,{})
	map('n', 'gi', vim.lsp.buf.implementation,{})
end

vim.lsp.config('lua_ls', {
	on_attach = on_attach,
	capabilities = capabilities
})
vim.lsp.config('pylsp', {
	on_attach = on_attach,
	capabilities = capabilities
})
vim.lsp.config('bashls', {
	on_attach = on_attach,
	capabilities = capabilities
})
vim.lsp.config('clangd', {
  on_attach = on_attach,
  capabilities = capabilities
})
