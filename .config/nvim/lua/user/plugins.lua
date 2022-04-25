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
	use 'kyazdani42/nvim-web-devicons' -- A Lua fork of vim-devicons.

	-- Colorschemes
	use 'ishan9299/modus-theme-vim'
	use 'marko-cerovac/material.nvim'
	use 'olimorris/onedarkpro.nvim'
	use 'yashguptaz/calvera-dark.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'sainnhe/sonokai'
	use 'sainnhe/everforest'
	use 'ayu-theme/ayu-vim'
	use 'Mofiqul/vscode.nvim'

	-- Syntax / Programming support
	use 'nvim-treesitter/nvim-treesitter' -- Nvim Treesitter configurations and abstraction layer
	use 'norcalli/nvim-colorizer.lua' -- The fastest Neovim colorizer.
	use 'p00f/nvim-ts-rainbow' -- Rainbow parentheses for neovim using tree-sitter.
	use 'windwp/nvim-ts-autotag' -- Use treesitter to auto close and auto rename html tag Topics
	use 'filipdutescu/renamer.nvim' -- VS Code-like renaming UI for Neovim, writen in Lua.

	-- UI
	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/bufferline.nvim'
	use 'akinsho/toggleterm.nvim' -- A neovim lua plugin to help easily manage multiple terminal windows
	use 'nvim-telescope/telescope.nvim' -- Find, Filter, Preview, Pick. All lua, all the time.
	use 'nvim-telescope/telescope-media-files.nvim'
	use 'kyazdani42/nvim-tree.lua' -- A simple and fast file explorer tree for Neovim !.

	-- Completion
	use 'hrsh7th/nvim-cmp' -- The completion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- Lsp completion
	use 'hrsh7th/cmp-buffer' -- Buffer completions
	use 'hrsh7th/cmp-path' -- Path completions
	use 'hrsh7th/cmp-cmdline' -- Cmdline completions
	use 'hrsh7th/cmp-nvim-lua' -- This source will complete neovim's Lua runtime API such vim.lsp.*
	use 'saadparwaiz1/cmp_luasnip' -- Snippet completions

	-- Snippets
	use 'L3MON4D3/LuaSnip' -- Snippets engine
	use 'rafamadriz/friendly-snippets'

	-- LSP
	use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
	use 'williamboman/nvim-lsp-installer' -- Simple to use language server installer
	use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.

	-- Comment
	use 'numToStr/Comment.nvim' -- Smart and powerful comment plugin for neovim.
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- Git
	use 'lewis6991/gitsigns.nvim' -- Git integration: signs, hunk actions, blame, etc.
	use 'kdheepak/lazygit.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
