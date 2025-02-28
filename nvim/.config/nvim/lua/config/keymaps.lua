local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map('n', '<space><space>x', '<cmd>source %<CR>' )
-- Map jk to esc
map('i', 'jk', '<esc>l', defaults)

-- map for quick quit, save files using leader key
---- Normal mode
map('n', '<Leader>w', ':write<CR>')
map('n', '<Leader>a', ':wqa<CR>')
map('n', '<Leader>x', ':wq<CR>')

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
