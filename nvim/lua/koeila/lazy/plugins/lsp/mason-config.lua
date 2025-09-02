local mason_lsp = require('mason-lspconfig')

return {
	setup = function(ensure_installed)
		mason_lsp.setup({
			automatic_installation = false,
			ensure_installed = ensure_installed,
		})
	end,
}
