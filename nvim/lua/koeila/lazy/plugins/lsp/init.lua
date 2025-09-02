local ensure_installed = {
  -- 'asm_lsp',
	'lua_ls',
	-- 'rust_analyzer',
	'bashls',
	'clangd',
	-- 'csharp_ls',
	'cmake',
	'cssls',
	'dockerls',
	'docker_compose_language_service',
	'dotls',
	'efm',
	'eslint',
	'emmet_ls',
	-- 'gopls',
	-- 'graphql',
	-- 'gradle_ls',
	'html',
  -- 'tailwindcss',
	'jsonls',
	'ts_ls',
	'marksman',
	'pyright',
	-- 'sqlls',
	--'svelte',
	-- 'taplo',
	'yamlls',
	'intelephense',
	-- 'jdtls'
}

vim.filetype.add({
  extension = {
    blade = "blade", -- se o treesitter do blade estiver instalado
  },
  pattern = {
    [".*%.blade%.php"] = "php", -- faz o intelephense entender como PHP
  },
})

-- Mason config
require('koeila.lazy.plugins.lsp.mason-config').setup(ensure_installed)

-- Lsp config
require('koeila.lazy.plugins.lsp.lspconfig').setup(ensure_installed)

-- Lsp signature
-- require('koeila.plugins.lsp.lsp-signature')
