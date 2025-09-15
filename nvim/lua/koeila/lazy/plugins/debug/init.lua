local status_dapui, dapui = pcall(require, 'dapui')
local status_dap, dap = pcall(require, 'dap')
if not status_dapui or not status_dap then
	return
end

-- Install debuggers
require 'koeila.lazy.plugins.debug.mason-dap'

-- UI
require('koeila.lazy.plugins.debug.dapui-config').setup(dap, dapui)

-- Keymaps
require('koeila.keymaps.plugins').set_dap()

-- [ Python ]
dap.adapters.python = require('koeila.lazy.plugins.debug.adapters_configs.python').adapter
dap.configurations.python = require('koeila.lazy.plugins.debug.adapters_configs.python').configurations

-- [ C ]
dap.adapters.cppdbg = require('koeila.lazy.plugins.debug.adapters_configs.cpp').adapter
dap.configurations.cpp = require('koeila.lazy.plugins.debug.adapters_configs.cpp').configurations

-- [ PHP ]
dap.adapters.php = require('koeila.lazy.plugins.debug.adapters_configs.php').adpter
dap.configurations.php = require('koeila.lazy.plugins.debug.adapters_configs.php').configurations
