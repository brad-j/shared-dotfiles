local map = vim.keymap.set
local builtin = require("telescope.builtin")

map("n", "<space><space>x", "<cmd>source %<CR>")

-- Map jk to esc
map("i", "jk", "<esc>", { noremap = true, silent = true })

-- Easy Save
map("n", "<leader>w", ":write<CR>", { desc = "Save file" })
-- map('n', '<leader>a', ':wqa<CR>', { desc = 'Save all and quit' })
map("n", "<leader>x", ":wq<CR>", { desc = "Save and quit" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- New line without insert mode
map("n", "<leader>o", "o<Esc>jk", { desc = "New line below" })
map("n", "<leader>O", "O<Esc>jk", { desc = "New line above" })

-- Split screens
map("n", "<leader>vs", "<cmd>:vsplit<CR>", { desc = "Split vertically" })
map("n", "<leader>hs", "<cmd>:split<CR>", { desc = "Split horizontally" })
map("n", "<leader>ll", "<C-w>l", { desc = "Move to right window" })
map("n", "<leader>hh", "<C-w>h", { desc = "Move to left window" })
map("n", "<leader>kk", "<C-w>t", { desc = "Move to top window" })
map("n", "<leader>jj", "<C-w>b", { desc = "Move to bottom window" })

-- Unhighlight search
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Telescope
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Oil
map("n", "<leader>-", "<cmd>Oil<CR>", { desc = "Open parent directory" })

-- Copilot
map("n", "<leader>aa", "<cmd>CopilotChatToggle<CR>", { desc = "Open Copilot Chat" })
