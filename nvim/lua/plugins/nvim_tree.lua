return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly',
    config = function()

        require("nvim-tree").setup({
            auto_reload_on_write = true,
            -- open_on_setup = true,
            disable_netrw = true,
            view = {
                adaptive_size = true,
            },
            remove_keymaps = {
                "<C-k>"
            }
        })

        local function open_nvim_tree(data)
            -- buffer is a [No Name]
            -- local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
            local no_name = data.file == "[No Name]"

            -- buffer is a directory
            local directory = vim.fn.isdirectory(data.file) == 1

            if not no_name and not directory then
                return
            end

            -- change to the directory
            if directory then
                vim.cmd.cd(data.file)
            end

            -- open the tree
            require("nvim-tree.api").tree.open()
        end

        vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
    end, cond = Not_vscode()
}
