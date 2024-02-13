return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require('oil').setup({
            keymaps = {
                ["g?"] = "actions.show_help",
                ["<CR>"] = "actions.select",
                ["o"] = "actions.select",
                ["O"] = "actions.preview",
                ["<C-n>"] = "actions.select_vsplit",
                ["<C-m>"] = "actions.select_split",
                ["<C-t>"] = "actions.select_tab",
                ["<C-c>"] = "actions.close",
                ["<C-l>"] = "actions.refresh",
                ["-"] = "actions.parent",
                ["_"] = "actions.open_cwd",
                ["`"] = "actions.cd",
                ["~"] = "actions.tcd",
                ["gs"] = "actions.change_sort",
                ["gx"] = "actions.open_external",
                ["g."] = "actions.toggle_hidden",
                ["g\\"] = "actions.toggle_trash",
                ["<C-p>"] = nil,
                ["<C-s>"] = nil,
                ["<C-h>"] = nil,
            },
            use_default_keymaps = false,
        })
    end,
}
