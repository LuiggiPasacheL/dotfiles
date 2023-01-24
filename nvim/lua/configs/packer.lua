local cond = function()
    return vim.g.vscode == 1 -- True if vscode is active
end

return require('packer').startup(function(use)

    use { 'wbthomason/packer.nvim' } -- Packer

    -- TODO: Replace for " use 'tpope/vim-surround' "
    use { 'machakann/vim-sandwich' }

    use({ 'bkad/CamelCaseMotion' })

    -- TODO: Research this plugins for vscode
    -- use 'rhysd/clever-f.vim'
    -- use 'tomtom/tcomment_vim'
    -- use 'phaazon/hop.nvim'

    use({
        'folke/tokyonight.nvim',
        disable = cond()
    }) -- Colorscheme
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' },
        disable = cond()
    }) -- Telescope

    use({
        "nvim-treesitter/nvim-treesitter",
        { run = ":TSUpdate" },
        disable = cond()
    }) -- Treesitter

    use({
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    })

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        tag = 'nightly',
        disable = cond()
    } -- Files explorer

    use { 'windwp/nvim-ts-autotag', disable = cond() }
    use { 'nvim-lualine/lualine.nvim', disable = cond() }
    use { 'folke/todo-comments.nvim', disable = cond() }
    use { 'tpope/vim-fugitive', disable = cond() }
    use { 'windwp/nvim-autopairs', disable = cond() }
    use { 'numToStr/Comment.nvim', disable = cond() }

end)
