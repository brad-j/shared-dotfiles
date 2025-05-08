local map = vim.keymap.set
local builtin = require("telescope.builtin")

-- General
map("i", "jk", "<esc>", { noremap = true, silent = true })
map("n", "<leader>rd", "<C-r>", { desc = "Redo undo" })
map("v", "<leader>ee", "<Esc>", { desc = "Escape visual mode" })

-- Oil
map("n", "<leader>-", "<cmd>Oil<CR>", { desc = "Open parent directory" })

-- New line without insert mode
map("n", "<leader>o", "o<Esc>jk", { desc = "New line below" })
map("n", "<leader>O", "O<Esc>jk", { desc = "New line above" })

-- Easy Save
map("n", "<leader>w", ":write<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- Telescope
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Unhighlight search
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Split screens
map("n", "<leader>vs", "<cmd>:vsplit<CR>", { desc = "Split vertically" })
map("n", "<leader>hs", "<cmd>:split<CR>", { desc = "Split horizontally" })
map("n", "<leader>ll", "<C-w>l", { desc = "Move to right window" })
map("n", "<leader>hh", "<C-w>h", { desc = "Move to left window" })
map("n", "<leader>kk", "<C-w>t", { desc = "Move to top window" })
map("n", "<leader>jj", "<C-w>b", { desc = "Move to bottom window" })
map("n", "<leader>iw", ":vertical resize +10<CR>", { desc = "Increase window width" })
map("n", "<leader>dw", ":vertical resize -10<CR>", { desc = "Decrease window width" })

-- AI
--map({ "n", "v" }, "<leader>a", "<cmd>AvanteAsk<CR>", { desc = "AvanteAsk" })
