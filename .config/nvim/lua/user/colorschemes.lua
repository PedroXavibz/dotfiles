local colorscheme = 'vscode'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
	print('Maybe the colorscheme ' .. colorscheme .. ' his not installed')
	return
end

local opts = vim.g

opts.vscode_style = 'dark'
opts.vscode_italic_comment = 1

vim.cmd('colorscheme ' .. colorscheme)
