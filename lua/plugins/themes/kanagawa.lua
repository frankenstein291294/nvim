return {
    "rebelot/kanagawa.nvim",
    config = function()
        require('kanagawa').setup({
            theme = "dragon", -- Load "wave" theme
            background = { -- map the value of 'background' option to a theme
                dark = "wave", -- try "dragon" !
                light = "lotus"
            },
        })
    end
}
