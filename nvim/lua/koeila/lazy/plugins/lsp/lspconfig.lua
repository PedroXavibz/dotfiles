local lspconfig = require 'lspconfig'
local lsp_handler = require 'koeila.lazy.plugins.lsp.handle'

lsp_handler.setup()

local opts = {
	on_attach = lsp_handler.on_attach,
	capabilities = lsp_handler.capabilities,
	flags = {
		debounce_text_changes = 150,
	},
}

return {
	setup = function(servers)
		for _, server in pairs(servers) do
			if server == 'lua_ls' then
				local lua_opts = require 'koeila.lazy.plugins.lsp.servers_configs.lua_ls'
				opts = vim.tbl_deep_extend('force', lua_opts, opts)
			end

			if server == 'jsonls' then
				local jsonls_opts = require 'koeila.lazy.plugins.lsp.servers_configs.jsonls'
				opts = vim.tbl_deep_extend('force', jsonls_opts, opts)
			end

			if server == 'yamlls' then
				local yamlls_opts = require 'koeila.lazy.plugins.lsp.servers_configs.yamlls'
				opts = vim.tbl_deep_extend('force', yamlls_opts, opts)
			end

			if server == 'intelephense' then
				local intelephense_opts = require 'koeila.lazy.plugins.lsp.servers_configs.intelephense'
				opts = vim.tbl_deep_extend('force', intelephense_opts, opts)
			end

			if server == "tsserver" or server == "ts_ls" then
				local ts_opts = {
					filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
					cmd = { "typescript-language-server", "--stdio" },
				}
				opts = vim.tbl_deep_extend("force", opts, ts_opts)
			end

			if server == 'html' then
				local html_opts = {
					settings = {
						filetypes = { "html", "blade" },
						init_options = {
							configurationSection = { "html", "css", "javascript" },
							embeddedLanguages = {
								css = true,
								javascript = true
							},
							provideFormatter = true
						}
					}
				}
				opts = vim.tbl_deep_extend('force', html_opts, opts)
			end

			-- if server == 'java' then
			-- 	require('java').setup({
			-- 		-- Your custom jdtls settings goes here
			-- 	})
			-- end

			-- if server == 'jdtls' then
			-- 	require('lspconfig').jdtls.setup({
			-- 		-- Your custom nvim-java configuration goes here
			-- 	})
			-- end

			-- if server == 'clangd' then
			--   local clangd_opts = require 'koeila.lazy.plugins.lsp.servers_configs.clangd'
			--   opts = vim.tbl_deep_extend('force', clangd_opts, opts)
			-- end

			lspconfig[server].setup(opts)
		end
	end,
}
