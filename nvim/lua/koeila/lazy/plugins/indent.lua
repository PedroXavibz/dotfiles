require('hlchunk').setup({
	chunk = {
		enable = true,
		use_treesitter = true,
		chars = {
			horizontal_line = '─',
			vertical_line = '│',
			left_top = '┌',
			left_bottom = '└',
			right_arrow = '─',
		},
		style = {
			{ fg = '#eaecf7' }, -- Grey color like VSCode block indicators
		},
	},
	indent = {
		enable = true,
		chars = { '│' }, -- Vertical line for indentation level
		style = {
			{ fg = '#373737' },
		},
	},
	line_num = {
		enable = true,
		style = { '#eaecf7' }, -- Grey line number indicators for blocks
	},
})
