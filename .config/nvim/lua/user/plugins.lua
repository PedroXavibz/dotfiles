local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		'git',
		'clone',
		'--depth',
		'1',
		'https://github.com/wbthomason/packer.nvim',
		install_path,
	})
	print 'Installing packer close and reopen Neovim...'
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'rounded' })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use 'wbthomason/packer.nvim' -- Have packer manage itself
	use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
	use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins
	use 'lewis6991/impatient.nvim'
	use({
		'antoinemadec/FixCursorHold.nvim', -- This is needed to fix lsp doc highlight
		config = function()
			require('impatient').enable_profile()
		end,
	})

	-- Colorschemes
	use 'ishan9299/modus-theme-vim'
	use 'marko-cerovac/material.nvim'
	use 'olimorris/onedarkpro.nvim'
	use 'yashguptaz/calvera-dark.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use({
		'catppuccin/nvim',
		as = 'catppuccin',
	})
	use 'sainnhe/sonokai'
	use 'sainnhe/everforest'
	use 'ayu-theme/ayu-vim'

	-- Syntax
	use 'nvim-treesitter/nvim-treesitter' -- Nvim Treesitter configurations and abstraction layer

	-- Editing supports
	use({
		'p00f/nvim-ts-rainbow', -- Rainbow parentheses for neovim using tree-sitter.
		'windwp/nvim-ts-autotag', -- Use treesitter to auto close and auto rename html tag Topics
		'filipdutescu/renamer.nvim', -- VS Code-like renaming UI for Neovim, writen in Lua.
		'olimorris/persisted.nvim', -- Simple session management for Neovim. Updated fork with git branch support
		config = function()
			require('persisted').setup({
				dir = vim.fn.expand(vim.fn.stdpath 'data' .. '/sessions/'), -- directory where session files are saved
				use_git_branch = false, -- create session files based on the branch of the git enabled repository
				autosave = true, -- automatically save session files when exiting Neovim
				autoload = true, -- automatically load the session for the cwd on Neovim startup
				options = { 'buffers', 'curdir', 'tabpages', 'winsize' }, -- session options used for saving
				allowed_dirs = nil, -- table of dirs that the plugin will auto-save and auto-load from
				ignored_dirs = nil, -- table of dirs that are ignored when auto-saving and auto-loading
				before_save = function() end, -- function to run before the session is saved to disk
				after_save = function() end, -- function to run after the session is saved to disk
			})
		end,
	})

	-- Color
	use 'norcalli/nvim-colorizer.lua' -- The fastest Neovim colorizer.

	-- Icon
	use 'kyazdani42/nvim-web-devicons' -- A Lua fork of vim-devicons.

	-- Utility
	use 'rcarriga/nvim-notify' -- A fancy, configurable, notification manager for NeoVim.
	use({
		'xiyaowong/nvim-transparent', -- Make background transparent
		config = function()
			require('transparent').setup({
				enable = true, -- boolean: enable transparent
				extra_groups = { -- table/string: additional groups that should be clear
					-- In particular, when you set it to 'all', that means all avaliable groups

					-- example of akinsho/nvim-bufferline.lua
					'BufferLineTabClose',
					'BufferlineBufferSelected',
					'BufferLineFill',
					'BufferLineBackground',
					'BufferLineSeparator',
					'BufferLineIndicatorSelected',
				},
				exclude = {}, -- table: groups you don't want to clear
			})
		end,
	})

	-- Tabline
	use({ 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' })

	-- Statusline
	use({
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	})

	-- Indent
	use({
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('indent_blankline').setup({
				show_current_context = true,
				show_current_context_start = false,
			})
		end,
	})

	-- Completion
	use({
		'hrsh7th/nvim-cmp', -- The completion plugin
		'hrsh7th/cmp-nvim-lsp', -- Lsp completion
		'hrsh7th/cmp-buffer', -- Buffer completions
		'hrsh7th/cmp-path', -- Path completions
		'hrsh7th/cmp-cmdline', -- Cmdline completions
		'hrsh7th/cmp-nvim-lua', -- This source will complete neovim's Lua runtime API such vim.lsp.*
		'saadparwaiz1/cmp_luasnip', -- Snippet completions
	})

	-- Snippets
	use({
		'L3MON4D3/LuaSnip', -- Snippets engine
		'rafamadriz/friendly-snippets', -- A bunch of snippets to use
	})

	-- LSP
	use({
		'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
		'williamboman/nvim-lsp-installer', -- Simple to use language server installer
		'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
	})

	-- Comment
	use({
		'numToStr/Comment.nvim', -- Smart and powerful comment plugin for neovim.
		'JoosepAlviste/nvim-ts-context-commentstring',
	})

	-- Terminal integration
	use 'akinsho/toggleterm.nvim' -- A neovim lua plugin to help easily manage multiple terminal windows

	-- Fuzzy Finder
	use({
		'nvim-telescope/telescope.nvim', -- Find, Filter, Preview, Pick. All lua, all the time.
		requires = { { 'nvim-lua/plenary.nvim' } },
	})
	use 'nvim-telescope/telescope-media-files.nvim'

	-- File explorer
	use 'kyazdani42/nvim-tree.lua' -- A simple and fast file explorer tree for Neovim !.

	-- Git
	use 'lewis6991/gitsigns.nvim' -- Git integration: signs, hunk actions, blame, etc.
	use 'kdheepak/lazygit.nvim'

	-- Scrollbar
	use({
		'petertriho/nvim-scrollbar', -- Extensible Neovim Scrollbar
		config = function()
			require('scrollbar').setup()
		end,
	})

	-- Scrolling
	use({
		'karb94/neoscroll.nvim', -- Smooth scrolling neovim plugin written in lua
		config = function()
			require('neoscroll').setup()
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
