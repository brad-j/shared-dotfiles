vim.cmd("let g:netrw_liststyle = 3")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.number = true
vim.wo.relativenumber = true
local opt = vim.opt

-- Tabs settings
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.softtabstop = 2

opt.mouse = 'a'

vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = 'yes'

opt.updatetime = 250
opt.timeoutlen = 300

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣'}

opt.inccommand = 'split'

opt.cursorline = true

opt.scrolloff = 10
