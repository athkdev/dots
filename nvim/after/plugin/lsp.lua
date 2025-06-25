require("nvim-lsp-installer").setup ({})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {'lua_ls','eslint', 'ruff'},
})

require('lspconfig').lua_ls.setup({})
require('lspconfig').harper_ls.setup({})
require('lspconfig').eslint.setup({})
require('lspconfig').java_language_server.setup({})
require('lspconfig').ruff.setup({})
require('lspconfig').ts_ls.setup({})
require('lspconfig').eslint.setup({})

