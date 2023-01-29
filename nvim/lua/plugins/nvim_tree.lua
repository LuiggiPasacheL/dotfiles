return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly',
    config = function()
        require("nvim-tree").setup({
            auto_reload_on_write = true,
            view = {
                adaptive_size = true,
            },
            remove_keymaps = {
                "<C-k>"
            }
        })
    end,
    cond = Not_vscode()
}
