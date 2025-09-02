return {
	{
		'nvim-lua/plenary.nvim',
		commit = 'b9fd5226c2f76c951fc8ed5923d85e4de065e509',
		lazy = false,
		priority = 1000,
	},

	-- Component Library for Neovim.
	{
		'MunifTanjim/nui.nvim',
		commit = 'de740991c12411b663994b2860f1a4fd0937c130',
	},

	{
		'echasnovski/mini.nvim',
		commit = '9a92084b3e9595568c0b07b62ad3c43249fa91fb',
	},

	-- NOTE: UI
	{
		'nvim-tree/nvim-web-devicons',
		commit = '4ae47f4fb18e85b80e84b729974fe65483b06aaf',
		config = function()
			require('nvim-web-devicons').setup()
		end,
	},

	-- Neovim statusline
	{
		'nvim-lualine/lualine.nvim',
		commit = 'b8c23159c0161f4b89196f74ee3a6d02cdc3a955',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require 'koeila.lazy.plugins.lualine'
		end,
	},

	-- A tree like view for symbols in Neovim
	{
		'simrat39/symbols-outline.nvim',
		commit = '564ee65dfc9024bdde73a6621820866987cbb256',
		config = function()
			require 'koeila.lazy.plugins.symbols'
		end,
	},

	-- Todo comment highlight
	{
		'folke/todo-comments.nvim',
		commit = '304a8d204ee787d2544d8bc23cd38d2f929e7cc5',
		config = function()
			require 'koeila.lazy.plugins.todo'
		end,
	},

	-- Indent
	{
		'nmac427/guess-indent.nvim',
		commit = '84a4987ff36798c2fc1169cbaff67960aed9776f',
		config = function()
			require('guess-indent').setup({})
		end,
	},

	{
		'shellRaining/hlchunk.nvim',
		commit = '474ec5d0f220158afa83aaefab32402e710d3032',
		event = { 'BufReadPre', 'BufNewFile' },
		config = function()
			require 'koeila.lazy.plugins.indent'
		end,
	},

	-- Peek lines just when you intend
	{
		'nacro90/numb.nvim',
		commit = '7f564e638d3ba367abf1ec91181965b9882dd509',
		config = function()
			require('numb').setup()
		end,
	},

	-- A Neovim plugin hiding your colorcolumn when unneeded.
	{
		'm4xshen/smartcolumn.nvim',
		commit = 'b9cdbdf42f7ac5a659204cd5926017c7ff724a19',
		config = function()
			require 'koeila.lazy.plugins.smartcolumn'
		end,
	},

	--  Highlight colors for neovim
	{
		'brenoprata10/nvim-highlight-colors',
		commit = '1ce0a09bfc28c7274e649d20927cea51e440b65c',
		config = function()
			require 'koeila.lazy.plugins.highlight'
		end,
	},

	-- Colorscheme
	{
		'navarasu/onedark.nvim',
		commit = 'de495fabe171d48aed5525f002d14414efcecbb2',
		config = function()
			require('onedark').setup({
				style = 'warmer',
				transparent = false, -- Show/hide background
				term_colors = true, -- Change terminal color as per the selected theme style
				ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
				cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

				-- toggle theme style ---
				toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
				toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

				-- Change code style ---
				-- Options are italic, bold, underline, none
				-- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
				code_style = {
					comments = 'italic',
					keywords = 'none',
					functions = 'none',
					strings = 'none',
					variables = 'none',
				},

				-- Lualine options --
				lualine = {
					transparent = false, -- lualine center bar transparency
				},

				-- Custom Highlights --
				colors = {}, -- Override default colors
				highlights = {}, -- Override highlight groups

				-- Plugins Config --
				diagnostics = {
					darker = true, -- darker colors for diagnostic
					undercurl = true, -- use undercurl instead of underline for diagnostics
					background = true, -- use background color for virtual text
				},
			})
			require('koeila.colorscheme.init').colorscheme('onedark', false)
		end,
	},

	{
		'cryptomilk/nightcity.nvim',
		commit = '9f0cac722897ccc4d1ae579cc4e071a2a04f4071',
		config = function()
			require('nightcity').setup()
			-- require ('koeila.colorscheme.init').colorscheme('nightcity', false)
		end,
	},

	{
		'Mofiqul/vscode.nvim',
		commit = 'cb9df0873c10a21d05362455ae3bb355eadcef6b',
		config = function()
			local c = require('vscode.colors').get_colors()
			require('vscode').setup({
				-- Alternatively set style in setup
				style = 'dark',

				-- Enable transparent background
				transparent = false,

				-- Enable italic comment
				italic_comments = true,

				-- Underline `@markup.link.*` variants
				underline_links = true,

				-- Disable nvim-tree background color
				disable_nvimtree_bg = false,

				-- Override colors (see ./lua/vscode/colors.lua)
				-- color_overrides = {
				-- 	vscLineNumber = '#FFFFFF',
				-- },

				-- Override highlight groups (see ./lua/vscode/theme.lua)
				group_overrides = {
					-- this supports the same val table as vim.api.nvim_set_hl
					-- use colors from this colorscheme by requiring vscode.colors!
					Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
				},
			})
			-- require('koeila.colorscheme.init').colorscheme('vscode', false)
		end,
	},

	{
		'ellisonleao/gruvbox.nvim',
		commit = '12c2624287dc827edb5d72b2bc4c9619e692a554',
		priority = 1000,
		config = function()
			require('gruvbox').setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = '', -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})
			-- require('koeila.colorscheme.init').colorscheme('gruvbox', false)
		end,
	},

	{
		'MeanderingProgrammer/render-markdown.nvim',
		commit = 'f626e90bbc4b3d8f4fd29c909d958b165af13f4a',
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},

	-- NOTE: [[ LSP | CMP | SNIPPETS | DEBUG | LINTER | FORMATTER 🚬 ]]
	-- LSP
	{
		'neovim/nvim-lspconfig',
		commit = '44201a94c6b2031f53bdcf645d5de72489e806b9',
		dependencies = {
			{
				'mason-org/mason-lspconfig.nvim',
				commit = '1ec4da522fa49dcecee8d190efda273464dd2192',
			},
			{
				'ray-x/lsp_signature.nvim',
				commit = '62cadce83aaceed677ffe7a2d6a57141af7131ea',
			},
		},
	},

	-- Snippets
	{
		'L3MON4D3/LuaSnip',
		commit = 'de10d8414235b0a8cabfeba60d07c24304e71f5c',
		dependencies = {
			{
				'saadparwaiz1/cmp_luasnip',
				commit = '98d9cb5c2c38532bd9bdb481067b20fea8f32e90',
			},
		},
	},

	-- JSON Schemas
	{
		'b0o/schemastore.nvim',
		commit = '8e74c08998fd786239caba373344f4e4601e21fe',
	},

	-- Laravel
	{
		'adibhanna/laravel.nvim',
		commit = '623a22de1a54bd6e96839cef1845ffaaf3a1eed1',
		dependencies = {
			'MunifTanjim/nui.nvim',
			'nvim-lua/plenary.nvim',
		},
		keys = {
			{ '<leader>la', ':Artisan<cr>', desc = 'Laravel Artisan' },
			{ '<leader>lc', ':Composer<cr>', desc = 'Composer' },
			{ '<leader>lr', ':LaravelRoute<cr>', desc = 'Laravel Routes' },
			{ '<leader>lm', ':LaravelMake<cr>', desc = 'Laravel Make' },
		},
		config = function()
			require('laravel').setup()
		end,
	},

	{
		'ricardoramirezr/blade-nav.nvim',
		dependencies = { -- totally optional
			'hrsh7th/nvim-cmp', -- if using nvim-cmp
		},
		ft = { 'blade', 'php' }, -- optional, improves startup time
		opts = {
			-- This applies for nvim-cmp and coq, for blink refer to the configuration of this plugin
			close_tag_on_complete = true, -- default: true
		},
	},

	-- Debug
	{
		'mfussenegger/nvim-dap',
		commit = '968f89f8aac11b6bdbfc942c71d3436658c1435f',
		dependencies = {
			{
				'rcarriga/nvim-dap-ui',
				commit = 'cf91d5e2d07c72903d052f5207511bf7ecdb7122',
			},
			{
				'jay-babu/mason-nvim-dap.nvim',
				commit = '86389a3dd687cfaa647b6f44731e492970034baa',
			},
		},
	},

	-- Linter / formatter
	{
		'jay-babu/mason-null-ls.nvim',
		commit = 'de19726de7260c68d94691afb057fa73d3cc53e7',
		dependencies = {
			'nvimtools/none-ls.nvim',
			commit = 'e9c03f89cf16823cfa5fea3c04ec556b10ad7cb6',
		},
	},

	-- CMP
	{
		'hrsh7th/nvim-cmp',
		commit = 'b5311ab3ed9c846b585c0c15b7559be131ec4be9',
		dependencies = {
			{
				'hrsh7th/cmp-nvim-lsp',
				commit = 'bd5a7d6db125d4654b50eeae9f5217f24bb22fd3',
			},
			{
				'hrsh7th/cmp-buffer',
				commit = 'b74fab3656eea9de20a9b8116afa3cfc4ec09657',
			},
			{
				'hrsh7th/cmp-path',
				commit = 'c642487086dbd9a93160e1679a1327be111cbc25',
			},
			{
				'hrsh7th/cmp-cmdline',
				commit = 'd126061b624e0af6c3a556428712dd4d4194ec6d',
			},
			{
				'lukas-reineke/cmp-under-comparator',
				commit = '6857f10272c3cfe930cece2afa2406e1385bfef8',
			},
		},
		config = function()
			require 'koeila.lazy.plugins.cmp'
		end,
	},

	-- Easily manage external editor tooling such as LSP servers, DAP servers, linters, and formatters
	{
		'mason-org/mason.nvim',
		commit = '7dc4facca9702f95353d5a1f87daf23d78e31c2a',
		config = function(_, opts)
			require('koeila.lazy.plugins.mason').setup(opts)
			require 'koeila.lazy.plugins.lsp'
			require 'koeila.lazy.plugins.null-ls'
			require 'koeila.lazy.plugins.debug'
		end,
	},

	-- NOTE: [[ FUZZY FINDER 🔭 | FILE EXPLORE 🌲 ]]
	-- Plugin to manage the file system and other tree like structures.
	{
		'nvim-neo-tree/neo-tree.nvim',
		commit = 'bbeda076c8a2e7d16614287cd70239f577e5bf55',
		branch = 'v3.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons',
			'MunifTanjim/nui.nvim',
		},
		config = function()
			require 'koeila.lazy.plugins.neotree'
		end,
	},

	-- find, filter, preview, pick. all lua, all the time.
	{
		'nvim-telescope/telescope.nvim',
		commit = 'b4da76be54691e854d3e0e02c36b0245f945c2c7',
		dependencies = {
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				commit = '1f08ed60cafc8f6168b72b80be2b2ea149813e55',
			},
			{
				'nvim-telescope/telescope-frecency.nvim',
				commit = '21c08f073cfae477e6304b85cae78fbf46a793a4',
			},
			{
				'nvim-telescope/telescope-fzf-writer.nvim',
				commit = '00a1ab1b0aeaa4ad9da238861325ea1ee6d90a44',
			},
			{
				'nvim-telescope/telescope-ui-select.nvim',
				commit = '6e51d7da30bd139a6950adf2a47fda6df9fa06d2',
			},
		},
		config = function()
			require 'koeila.lazy.plugins.telescope'
		end,
	},

	-- NOTE: [[ LANGUAGE STUFFS 🧩 ]]
	-- Treesitter
	{
		'nvim-treesitter/nvim-treesitter',
		commit = '42fc28ba918343ebfd5565147a42a26580579482',
		build = ':TSUpdate',
		config = function()
			require 'koeila.lazy.plugins.treesitter'
		end,
	},

	-- Comments
	{
		'numToStr/Comment.nvim',
		commit = 'e30b7f2008e52442154b66f7c519bfd2f1e32acb',
		config = function()
			require('Comment').setup()
		end,
	},

	-- NOTE: [[ GIT | GITHUB 🐙]]
	{
		'lewis6991/gitsigns.nvim',
		commit = '6e3c66548035e50db7bd8e360a29aec6620c3641',
		config = function()
			require 'koeila.lazy.plugins.git'
		end,
	},
}
