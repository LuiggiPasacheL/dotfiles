return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Packer

    -- NOTE: Vscode and neovim  

    use 'machakann/vim-sandwich' -- S(z)urround

    use 'bkad/CamelCaseMotion' -- CamelCaseMotion

    -- NOTE:Only neovim plugins

    if not vim.g.vscode then

        use {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        } -- LSP

        use {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip'
        } -- CMP

        use("nvim-treesitter/nvim-treesitter", {
            run = ":TSUpdate"
        }) -- Treesitter

        use 'windwp/nvim-ts-autotag' --html autotag

        use 'nvim-lualine/lualine.nvim' -- Statusline

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { 'nvim-lua/plenary.nvim' }
        } -- Telescope

        use 'folke/todo-comments.nvim' -- Todo

        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons',
            },
            tag = 'nightly'
        } -- Files explorer

        use 'tpope/vim-fugitive' -- Git integration

        use 'windwp/nvim-autopairs' -- Autopairs

        use 'numToStr/Comment.nvim' -- Comments with "gcc"

        use 'folke/tokyonight.nvim' -- Colorscheme

    end

end)

