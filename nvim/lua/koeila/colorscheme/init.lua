return {
	colorscheme = function(name, opaque)
		vim.cmd('colorscheme ' .. name)

		if opaque then
			vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
			vim.cmd [[hi NonText guibg=NONE ctermbg=NONE]]
			vim.cmd [[hi SignColumn guibg=NONE ctermbg=NONE]]
			vim.cmd [[hi VertSplit guibg=NONE ctermbg=NONE]]
			vim.cmd [[hi FoldColumn guibg=NONE ctermbg=NONE]]
			vim.cmd [[hi StatusLine guibg=NONE ctermbg=NONE]]
			vim.cmd [[hi StatusLineNC guibg=NONE ctermbg=NONE]]
		end
	end,
}
