vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.number = true
vim.wo.relativenumber = true

local opt = vim.opt

opt.numberwidth = 4
opt.signcolumn = 'yes:1'
-- Tabs settings
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.softtabstop = 2

-- Folding
opt.foldmethod = 'expr'
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldcolumn = '0'
opt.foldtext = ""
opt.foldlevelstart = 99

opt.mouse = 'a'

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
