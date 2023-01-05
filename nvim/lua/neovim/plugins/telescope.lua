
local telescope = require("telescope")
telescope.setup {
    mappings = {
        i = {
            ["<C-h>"] = "which_key"
        }
    }
}
