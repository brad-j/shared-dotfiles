local opt = vim.opt

-- General settings
opt.cursorline = true
opt.backspace = "indent,eol,start"
opt.clipboard = "unnamedplus"
opt.signcolumn = "yes"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.textwidth = 80
opt.laststatus = 3

-- Tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Window settings
opt.number = true
opt.relativenumber = true
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevelstart = 99
