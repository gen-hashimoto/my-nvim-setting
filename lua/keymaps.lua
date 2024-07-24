local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- moving buffer
map("n", "<leader>n", ":bnext<Return>", opts)
map("n", "<leader>p", ":bprevious<Return>", opts)

-- format
vim.keymap.set('n', '<localleader>ff', function()
  vim.lsp.buf.format {
  timeout_ms = 200,
    async = true,
  }
end)
