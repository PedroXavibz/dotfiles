local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

---_-_--_-_- -_-_--_-_--_-_--_-_- -_-_--_-_-
-- _-_--_-_- - [NORMAL] _-_--_-_- -

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<leader>e', ':Lex 30<cr>', opts)

-- Resize with arrows
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- File save / exit
keymap('n', '<C-s>', ':w<CR>', opts)
keymap('n', '<S-x>', ':q!<CR>', opts)

-- Exit buffer
keymap('n', '<C-c>', ':bd<CR>', opts)

-- Move text up and down
keymap('n', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
keymap('n', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)

-- Search for match
keymap('n', '<C-f>', '/', { noremap = true })

-- Do last action
keymap('n', 'dr', '<C-.>', opts)

-- Go to begginer / end line
keymap('n', '<A-h>', '^', opts)
keymap('n', '<A-l>', 'g_', opts)

-- Navigate between paragraphs
keymap('n', '<C-o>', '{', opts)
keymap('n', '<C-i>', '}', opts)

-- Go to line up / bellow
keymap('n', 'O', 'O<ESC>', opts)
keymap('n', 'o', 'o<ESC>', opts)

-- Insert --
-- Press jj fast to enter
keymap('i', 'jj', '<ESC>', opts)

---_-_--_-_- -_-_--_-_--_-_--_-_- -_-_--_-_-
-- _-_--_-_- - [VISUAL MODE] _-_--_-_- -

-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move text up and down
keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', 'p', '"_dP', opts)

-- Go to begginer / end line
keymap('v', '<A-h>', '^', opts)
keymap('v', '<A-l>', 'g_', opts)

-- Navigate between paragraphs
keymap('v', '<C-o>', '{', opts)
keymap('v', '<C-i>', '}', opts)

---_-_--_-_- -_-_--_-_--_-_--_-_- -_-_--_-_-
-- _-_--_-_- - [VISUAL BLOCK MODE] _-_--_-_- -

-- Move text up and down
keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Go to begginer / end line
keymap('x', '<A-h>', '^', opts)
keymap('x', '<A-l>', 'g_', opts)

-- Navigate between paragraphs
keymap('x', '<C-o>', '{', opts)
keymap('x', '<C-i>', '}', opts)

---_-_--_-_- -_-_--_-_--_-_--_-_- -_-_--_-_-
-- _-_--_-_- - [TERMINAL MODE] _-_--_-_- -

-- Better terminal navigation
keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', term_opts)
keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', term_opts)
keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', term_opts)
keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', term_opts)

---_-_--_-_- -_-_--_-_--_-_--_-_- -_-_--_-_-
-- _-_--_-_- - [TELESCOPE] _-_--_-_- -

--keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap(
	'n',
	'<C-p>',
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	opts
)
keymap('n', '<leader>t', '<cmd>Telescope live_grep<cr>', opts)

---_-_--_-_- -_-_--_-_--_-_--_-_- -_-_--_-_-
-- _-_--_-_- - [NVIMTREE] _-_--_-_- -

keymap('n', '<C-t>', ':NvimTreeToggle<cr>', opts)
