return {
    'echasnovski/mini.indentscope',
    version = '*',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require('mini.indentscope').setup(
            {
                -- Which character to use for drawing scope indicator
                -- '│', '|', '¦', '┆', '┊', ''
                symbol = '│',
                draw = {
                    delay = 0,
                    animation = require("mini.indentscope").gen_animation.none(),
                },
            }
        )
    end
}
