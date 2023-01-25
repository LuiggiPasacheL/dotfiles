vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)

    use({ 'wbthomason/packer.nvim' }) -- Packer

    -- TODO: Replace for " use 'tpope/vim-surround' "
    use({ 
        'machakann/vim-sandwich',
        'bkad/CamelCaseMotion' 
    })

    -- TODO: Research this plugins for vscode
    -- use 'rhysd/clever-f.vim'
    -- use 'tomtom/tcomment_vim'
    -- use 'phaazon/hop.nvim'

    use({
        'folke/tokyonight.nvim',
    }) -- Colorscheme

    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' },
    }) -- Telescope

    use({
        "nvim-treesitter/nvim-treesitter",
        { run = ":TSUpdate" },
    }) -- Treesitter

    use({
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    })

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        tag = 'nightly',
    } -- Files explorer

    use { 
        'windwp/nvim-ts-autotag', 
    }

    use { 
        'nvim-lualine/lualine.nvim', 
    }

    use { 
        'folke/todo-comments.nvim', 
    }

    use { 
        'tpope/vim-fugitive',
    }

    use { 
        'windwp/nvim-autopairs',
    }

    use { 
        'numToStr/Comment.nvim',
    }
end)
