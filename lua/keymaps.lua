local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open nvim-tree with <leader>e
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- moving buffer
map("n","<leader>n", ":bnext<Return>", opts)
map("n", "<leader>p", ":bprevious<Return>", opts)
