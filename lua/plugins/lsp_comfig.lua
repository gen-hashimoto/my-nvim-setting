return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    "jose-elias-alvarez/null-ls.nvim",

    "jose-elias-alvarez/null-ls.nvim",

    "jayp0521/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },

    config = function()
        require("mason").setup()

        require("manson-null-ls").setup({
          ensure_installed = { 'prettier' },
          automatic_installation = true,
        })
        require("null-ls").setup({
          sources = { null_ls.builtins.formatting.prettier },
        })

        require("mason-lspconfig").setup({
            ensure_installed = {
                "pyright",
                "lua_ls",
                "bashls",
                "yamlls",
                "jsonls",
                "taplo",
                "rust_analyzer",
                'tsserver',
                'eslint',
            },
        })
    end

    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = { eslint = {} },
        setup = {
          eslint = function()
            require("lazyvim.util").lsp.on_attach(function(client)
              if client.name == "eslint" then
                client.server_capabilities.documentFormattingProvider = true
              elseif client.name == "tsserver" then
                client.server_capabilities.documentFormattingProvider = false
              end
            end)
          end,
        },
      },
    }
}

