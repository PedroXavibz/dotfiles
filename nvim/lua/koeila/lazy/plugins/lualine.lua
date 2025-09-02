require('lualine').setup({
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = { left = '', right = '' },
		section_separators = { left = '', right = '' },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = {
			'branch',
			'diff',
			{
				'diagnostics',
				sources = { 'nvim_diagnostic' },
				symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
			},
		},
		lualine_c = {
			'filename',
			{
				function()
					local clients = vim.lsp.vim.lsp.get_clients()
					if next(clients) == nil then
						return ''
					end
          return clients[1].name
					--[[ local client_names = {}
					for _, client in pairs(clients) do
						table.insert(client_names, client.name)
					end
					return table.concat(client_names, ', ') ]]
				end,
				icon = ' LSP:', -- Optional: Add an icon before the LSP name
				color = { gui = 'bold' }, -- Optional: Make the text bold
			},
		},
		lualine_x = { 'diff', 'encoding', 'fileformat', 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location' },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
