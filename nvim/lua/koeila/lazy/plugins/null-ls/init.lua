local null_ls = require('null-ls')

-- TODO: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#completion

local ensure_installed = {
	formatting = {
		-- 'eslint_d',
		-- 'fixjson',
		-- 'yamlfmt',
		'clang_format',
		-- 'golines',
		-- 'goimports',
		-- 'rustfmt',
		-- 'dart_format',
		-- 'autopep8',
		-- 'reorder_python_imports',
		-- 'elm_format',
		'stylua',
		-- 'duster',
		'pint',
		-- 'shfmt',
		-- 'google_java_format',
	},
	diagnostics = {
		-- 'pylint',
		-- 'mypy',
		-- 'pydocstyle',
		-- 'eslint_d',
		-- 'shellcheck',
    'cmake_lint',
    -- 'codespell'
	},
}

local sources = {}
local _install = {}

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

for builtin_type, builtins in pairs(ensure_installed) do
	for _, builtin in ipairs(builtins) do
		table.insert(_install, builtin)
		if builtin_type == 'diagnostics' then
			table.insert(sources, diagnostics[builtin])
		elseif builtin_type == 'formatting' then
			table.insert(sources, formatting[builtin])
		end
	end
end

require('koeila.lazy.plugins.null-ls.mason_null-ls').setup(_install)

null_ls.setup({
	debug = false,
	sources = sources,
})
