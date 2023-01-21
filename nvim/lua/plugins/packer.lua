local cond = function()
    return vim.g.vscode == 1 -- True if vscode is active
end

return require('packer').startup(function(use)

    use { 'wbthomason/packer.nvim' } -- Packer

    -- TODO: Replace for " use 'tpope/vim-surround' "
    use { 'machakann/vim-sandwich' }

    use { 'bkad/CamelCaseMotion' }

    -- TODO: Research this plugins for vscode
    -- use 'rhysd/clever-f.vim'
    -- use 'tomtom/tcomment_vim'
    -- use 'phaazon/hop.nvim'

    use {
        "nvim-treesitter/nvim-treesitter",
        { run = ":TSUpdate" },
        disable = cond()
    } -- Treesitter

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' },
        disable = cond()
    } -- Telescope

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        tag = 'nightly',
        disable = cond()
    } -- Files explorer

    use { 'neovim/nvim-lspconfig', disable = cond() }
    use { 'williamboman/mason.nvim', disable = cond() }
    use { 'williamboman/mason-lspconfig.nvim', disable = cond() }
    use { 'hrsh7th/cmp-nvim-lsp', disable = cond() }
    use { 'hrsh7th/cmp-buffer', disable = cond() }
    use { 'hrsh7th/nvim-cmp', disable = cond() }
    use { 'hrsh7th/cmp-vsnip', disable = cond() }
    use { 'hrsh7th/vim-vsnip', disable = cond() }
    use { 'windwp/nvim-ts-autotag', disable = cond() }
    use { 'nvim-lualine/lualine.nvim', disable = cond() }
    use { 'folke/todo-comments.nvim', disable = cond() }
    use { 'tpope/vim-fugitive', disable = cond() }
    use { 'windwp/nvim-autopairs', disable = cond() }
    use { 'numToStr/Comment.nvim', disable = cond() }
    use { 'folke/tokyonight.nvim', disable = cond() }

end)
