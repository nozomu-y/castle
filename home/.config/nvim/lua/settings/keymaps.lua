vim.g.mapleader = "\\"

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<ESC><ESC>", ":nohl<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- bufferline
keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>")

-- copilot
vim.g.copilot_assume_mapped = true
keymap.set(
	"i",
	"<C-g>",
	'copilot#Accept("<CR>")',
	{ silent = true, expr = true, script = true, replace_keycodes = false }
)
