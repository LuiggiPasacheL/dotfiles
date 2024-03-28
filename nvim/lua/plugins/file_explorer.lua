return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({
                auto_reload_on_write = true,
                view = {
                    adaptive_size = true,
                },
                on_attach = function(bufnr)
                    local api = require("nvim-tree.api")

                    -- default mappings
                    local function opts(desc)
                        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                    end

                    if api.config.mappings.default_on_attach then
                        api.config.mappings.default_on_attach(bufnr)
                    end

                    -- custom mappings
                    vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
                    vim.keymap.set("n", "<leader>j", api.node.navigate.sibling.last, opts("Last Sibling"))
                    vim.keymap.set("n", "<leader>k", api.node.navigate.sibling.first, opts("First Sibling"))
                    vim.keymap.set("n", "K", api.node.show_info_popup, opts("Info"))
                    vim.keymap.set("n", "<C-h>", "<C-w>h", opts("Navigate left"))
                    vim.keymap.set("n", "<C-l>", "<C-w>l", opts("Navigate right"))
                    vim.keymap.set("n", "<C-k>", "<C-w>k", opts("Navigate up"))
                    vim.keymap.set("n", "<C-j>", "<C-w>j", opts("Navigate down"))
                end,
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
        "stevearc/oil.nvim",
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup({
                default_file_explorer = false,
                keymaps = {
                    ["g?"] = "actions.show_help",
                    ["<CR>"] = "actions.select",
                    ["O"] = "actions.preview",
                    ["<leader>v"] = "actions.select_vsplit",
                    ["<leader>b>"] = "actions.select_split",
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
        cond = Not_vscode()
    },
}
