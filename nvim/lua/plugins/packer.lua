local nocode = function()
    return not vim.g.vscode
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
        disable = nocode()
    } -- Treesitter

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' },
        disable = nocode()
    } -- Telescope

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        tag = 'nightly',
        disable = nocode()
    } -- Files explorer

    use { 'neovim/nvim-lspconfig', disable = nocode() }
    use { 'williamboman/mason.nvim', disable = nocode() }
    use { 'williamboman/mason-lspconfig.nvim', disable = nocode() }
    use { 'hrsh7th/cmp-nvim-lsp', disable = nocode() }
    use { 'hrsh7th/cmp-buffer', disable = nocode() }
    use { 'hrsh7th/nvim-cmp', disable = nocode() }
    use { 'hrsh7th/cmp-vsnip', disable = nocode() }
    use { 'hrsh7th/vim-vsnip', disable = nocode() }
    use { 'windwp/nvim-ts-autotag', disable = nocode() }
    use { 'nvim-lualine/lualine.nvim', disable = nocode() }
    use { 'folke/todo-comments.nvim', disable = nocode() }
    use { 'tpope/vim-fugitive', disable = nocode() }
    use { 'windwp/nvim-autopairs', disable = nocode() }
    use { 'numToStr/Comment.nvim', disable = nocode() }
    use { 'folke/tokyonight.nvim', disable = nocode() }

end)
