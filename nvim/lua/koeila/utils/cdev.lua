local current_file = vim.api.nvim_buf_get_name(0)

if (current_file:match("%.c$") or current_file:match("%.h$")) then
  return
end

function OpenHeaderFile()
  local current_file = vim.api.nvim_buf_get_name(0)
  local file_name = vim.fn.fnamemodify(current_file, ':t')
  local file_base_name = vim.fn.fnamemodify(file_name, ':r')
  local header_file_path = vim.fn.getcwd() .. '/include/' .. file_base_name .. '.h'
  vim.cmd('vsplit ' .. header_file_path)
end

vim.api.nvim_create_user_command('OpenHeader', OpenHeaderFile, {})

local map = require("koeila.utils.keymap")

local keymap = {
  n = {
    ['<leader>h'] = {'<cmd>OpenHeader<cr>', 'Open header file'}
  }
}

map.set(keymap)
