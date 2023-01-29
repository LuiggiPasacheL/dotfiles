return {
    'windwp/nvim-autopairs',
    config = function ()
        require("nvim-autopairs").setup({})
    end,
    cond = Not_vscode()
}
