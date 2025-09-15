return {
	adpter = {
		type = 'executable',
		command = 'node',
		args = {
			vim.fn.stdpath 'data' .. '/mason/packages/php-debug-adapter/extension/out/phpDebug.js',
		},
	},
	configurations = {
		{
			name = 'Listen for Xdebug',
			type = 'php',
			request = 'launch',
			port = 9003,
			pathMappings = { ['/var/www/html'] = '${workspaceFolder}' },
		},
		{
			name = 'Launch Script',
			type = 'php',
			request = 'launch',
			program = '${file}',
		},
	},
}
