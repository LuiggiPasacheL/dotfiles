return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
    -- 'machakann/vim-sandwich',
    -- setup = function ()
    --     vim.cmd [[
    --         highlight OperatorSandwichBuns guifg='#aa91a0' gui=underline ctermfg=172 cterm=underline
    --         highlight OperatorSandwichChange guifg='#edc41f' gui=underline ctermfg='yellow' cterm=underline
    --         highlight OperatorSandwichAdd guibg='#b1fa87' gui=none ctermbg='green' cterm=none
    --         highlight OperatorSandwichDelete guibg='#cf5963' gui=none ctermbg='red' cterm=none
    --     ]]
    -- end
}
