local status_ok, null_ls = pcall(require, 'null-ls')

if not status_ok then
	print 'Plugin null-ls not found'
	return
end

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
		formatting.autopep8,
		formatting.stylua,
		formatting.prettier,
		formatting.clang_format,
		formatting.fixjson,
		formatting.rustfmt,
		formatting.eslint_d,
		diagnostics.eslint_d,
	},
})
