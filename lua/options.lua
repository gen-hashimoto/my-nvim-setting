local opt = vim.opt

-- language setting
vim.api.nvim_exec('language en_US', true)

-- clipboard
opt.clipboard = "unnamedplus"

-- line number
opt.number = true
opt.relativenumber = true

-- tab and indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- search setting
opt.ignorecase = true
opt.smartcase = true
