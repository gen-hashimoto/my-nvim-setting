return {
  {
      'nvimtools/none-ls.nvim',
      dependencies = 'nvim-lua/plenary.nvim',
      config = function()
          local null_ls = require("null-ls")
          null_ls.setup({
              diagnostics_format = "[#{m}] #{s} (#{c})",
              sources = {
                  null_ls.builtins.formatting.black,     -- python formatter
                  null_ls.builtins.formatting.isort,     -- python import sort
                  null_ls.builtins.diagnostics.flake8,   -- python linter
                  null_ls.builtins.formatting.stylua,    -- lua formatter
                  null_ls.builtins.diagnostics.luacheck, -- lua linter
                  null_ls.builtins.formatting.shfmt,     -- shell formatter
                  null_ls.builtins.diagnostics.shellcheck, -- shell linter
                  null_ls.builtins.code_actions.shellcheck, -- shell
                  null_ls.builtins.formatting.prettier,
                  null_ls.builtins.formatting.taplo,     -- toml formatter
                  null_ls.builtins.diagnostics.yamllint, -- yaml linter
              },
          })
      end,
  },
  {
    'jay-babu/mason-null-ls.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'williamboman/mason.nvim',
      'nvimtools/none-ls.nvim',
    },
    opts = {
      handlers = {}
    },
  },
}
