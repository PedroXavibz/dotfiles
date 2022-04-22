local colorscheme = 'onedarkpro'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
	print('Maybe the colorscheme ' .. colorscheme .. ' his not installed')
	return
end

vim.cmd('colorscheme ' .. colorscheme)
