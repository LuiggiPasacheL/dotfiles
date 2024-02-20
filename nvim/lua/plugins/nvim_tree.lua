return {
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly',
        config = function()
            require("nvim-tree").setup({
                auto_reload_on_write = true,
                -- open_on_setup = true,
                view = {
                    adaptive_size = true,
                },
                remove_keymaps = {
                    "<C-k>"
                },
                actions = {
                    open_file = {
                        quit_on_open = true,
                    }
                },
                renderer = {
                    group_empty = true,
                    highlight_git = true,
                    highlight_opened_files = "all",
                },
                update_focused_file = {
                    enable = true,
                },
                diagnostics = {
                    enable = true,
                    show_on_dirs = true,
                },
            })

            local function open_nvim_tree(data)
                -- buffer is a directory
                local directory = vim.fn.isdirectory(data.file) == 1

                -- change to the directory
                if not directory then
                    return
                end

                vim.cmd.cd(data.file)

                -- open the tree
                require("nvim-tree.api").tree.open()
            end

            vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
        end,
        cond = Not_vscode()
    },
    {
        -- insert oil.nvim here
    },
}
