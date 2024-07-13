-- https://github.com/tadashi-aikawa/owl-playbook/blob/e597c35e875579b3caecaa76f11d5c6d244198b1/mnt/common/nvim/lua/plugins/nvim-treesitter.lua
return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufNewFile', 'BufRead' },
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "bash",
        "css",
        "diff",
        "dockerfile",
        "elixir",
        "gitignore",
        "go",
        "html",
        "http",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "rust",
        "svelte",
        "toml",
        "typescript",
        "vim",
        "vue",
        "yaml",
        "vim",
        "vimdoc",
        "latex",
      },
      highlight = {
        enable = true,
        disable = { "ini" }
      },
      autotag = {
        enable = true,
      },
    }
  end
}
