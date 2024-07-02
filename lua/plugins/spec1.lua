return {
    -- vim-surround
    "tpope/vim-surround",

    -- textobj
    "kana/vim-textobj-user",
    { "kana/vim-textobj-entire", dependencies = { "kana/vim-textobj-user" }},

    -- nvim-tree
    "nvim-tree/nvim-web-devicons",
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {}
    end,
}
