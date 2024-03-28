
return {
    "windwp/nvim-ts-autotag",
    config = function ()
        require("nvim-ts-autotag").setup({
            filetypes = { "html", "xml", "htmldjango", "typescriptreact", "javascriptreact"},
        })
    end,
    cond = Not_vscode()
}
