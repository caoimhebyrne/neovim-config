return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        local nvimTree = require("nvim-tree")
        nvimTree.setup({
            filters = {
                dotfiles = false,
            },
            view = {
                width = 45,
            },
        })
    end
}
