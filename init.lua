-- language setting
vim.api.nvim_exec('language en_US', true)
-- line number
vim.opt.number = true
vim.wo.relativenumber = true
-- タブ文字をスペースに変換
vim.cmd("set expandtab")
-- タブ文字の幅を4スペースに設定
vim.cmd("set tabstop=4")
-- インサートモードでのタブの幅を4スペースに設定
vim.cmd("set softtabstop=4")
-- インデントに使用するスペースの幅を4スペースに設定
vim.cmd("set shiftwidth=4")
-- クリップボードの共有。
vim.opt.clipboard:append{'unnamedplus'}

