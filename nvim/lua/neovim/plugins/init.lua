
require('neovim.plugins.lsp')

require('neovim.plugins.cmp')

require('neovim.plugins.comment')

require("nvim-autopairs").setup({})

-- File explorer settings
-- Nvim-tree
require("nvim-tree").setup({
    view = {
        adaptive_size = true,
    }
})

-- Git
-- local neogit = require('neogit')
-- neogit.setup {}

-- Todo
local todo = require("todo-comments")
todo.setup {
    -- Requirement
    -- scoop install ripgrep
}

-- Telescope
local telescope = require("telescope")
telescope.setup {
    mappings = {
        i = {
            -- map actions.which_key to <C-h> (default: <C-/>)
            -- actions.which_key shows the mappings for your picker,
            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
            ["<C-h>"] = "which_key"
        }
    }
}
