local opt = vim.opt

-- language setting
vim.api.nvim_exec('language en_US.UTF-8', true)

-- clipboard
opt.clipboard = "unnamedplus"

-- display
opt.number = true
-- opt.relativenumber = true
opt.cursorline = true
opt.wrap = false
vim.api.nvim_set_option('termguicolors', true)
vim.api.nvim_set_option('scrolloff', 4)

-- interface
vim.opt.signcolumn = "yes"

-- tab and indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- search setting
opt.ignorecase = true
opt.smartcase = true
vim.api.nvim_set_option('inccommand', 'split')
