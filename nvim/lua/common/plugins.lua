return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer

    use {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
    } -- LSP

    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip'
    } -- CMP

    use {
        'nvim-treesitter/nvim-treesitter',
        'windwp/nvim-ts-autotag',
        run = ':TSUpdate'
    } -- Treesitter

    use 'nvim-lualine/lualine.nvim' -- Statusline

    use 'nvim-telescope/telescope.nvim' -- Telescope

    use 'folke/todo-comments.nvim' -- Todo

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons' -- Icons theme
    } -- File explorer

    use {
        'TimUntersberger/neogit',
         requires = 'nvim-lua/plenary.nvim'
    } -- Git integration

    -- Vscode plugins

    use 'windwp/nvim-autopairs' -- Autopairs

    use 'numToStr/Comment.nvim' -- Comments with "gcc"

    use 'machakann/vim-sandwich' -- Surround

    use 'bkad/CamelCaseMotion' -- CamelCaseMotion

    use 'folke/tokyonight.nvim' -- Colorscheme
end)
