return {
  { "neovim/nvim-lspconfig" },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "lua_ls",
          "bashls",
          "yamlls",
          "jsonls",
          "taplo",
          "rust_analyzer",
        },
      })

      require("lspconfig").pyright.setup({})
      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
      require("lspconfig").bashls.setup({})
      require("lspconfig").yamlls.setup({})
      require("lspconfig").jsonls.setup({})
      require("lspconfig").taplo.setup({})
      require("lspconfig").rust_analyzer.setup({})
    end
  },
}
