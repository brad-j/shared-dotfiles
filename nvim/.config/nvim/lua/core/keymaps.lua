local map = vim.keymap.set
local builtin = require('telescope.builtin')

map('n', '<space><space>x', '<cmd>source %<CR>' )

-- Map jk to esc
map('i', 'jk', '<esc>')

-- Easy Save 
map('n', '<Leader>w', ':write<CR>')
map('n', '<Leader>a', ':wqa<CR>')
map('n', '<Leader>x', ':wq<CR>')
map('n', '<Leader>q', ':q<CR>')

-- Unhighlight search
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Rename
map("n", "<Leader>rn", ":IncRename ")

-- Telescope
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Oil
map('n', '<leader>-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
