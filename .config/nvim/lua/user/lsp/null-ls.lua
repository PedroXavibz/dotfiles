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
		-- python
		formatting.autopep8,
		diagnostics.pylint,
		diagnostics.mypy,
		-- lua
		formatting.stylua,
		-- JS
		formatting.prettier,
		formatting.eslint_d,
		diagnostics.eslint_d,
		-- C/C++
		formatting.clang_format,
		-- JSON
		formatting.fixjson,
		-- Rust
		formatting.rustfmt,
	},
})
