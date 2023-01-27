return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    n = {
                        ["kj"] = "close",
                    },
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                    },
                },
            }
        })
    end
}
