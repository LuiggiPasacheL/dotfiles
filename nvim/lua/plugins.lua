local vscode = vim.g.vscode == 1

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Packer

    -- TODO: Replace for " use 'tpope/vim-surround' "
    use 'machakann/vim-sandwich' -- S(z)urround

    use 'bkad/CamelCaseMotion' -- CamelCaseMotion

    -- TODO: Research this plugins for vscode
    -- use 'rhysd/clever-f.vim'
    -- use 'tomtom/tcomment_vim'
    -- use 'phaazon/hop.nvim'

    use {
        "nvim-treesitter/nvim-treesitter",
        { run = ":TSUpdate" },
        disable = vscode
    } -- Treesitter

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' },
        disable = vscode
    } -- Telescope

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        tag = 'nightly',
        disable = vscode
    } -- Files explorer

    use { 'neovim/nvim-lspconfig', disable = vscode }
    use { 'williamboman/mason.nvim', disable = vscode }
    use { 'williamboman/mason-lspconfig.nvim', disable = vscode }
    use { 'hrsh7th/cmp-nvim-lsp', disable = vscode }
    use { 'hrsh7th/cmp-buffer', disable = vscode }
    use { 'hrsh7th/nvim-cmp', disable = vscode }
    use { 'hrsh7th/cmp-vsnip', disable = vscode }
    use { 'hrsh7th/vim-vsnip', disable = vscode } -- CMP
    use { 'windwp/nvim-ts-autotag', disable = vscode } --html autotag
    use { 'nvim-lualine/lualine.nvim', disable = vscode } -- Statusline
    use { 'folke/todo-comments.nvim', disable = vscode } -- Todo
    use { 'tpope/vim-fugitive', disable = vscode } -- Git integration
    use { 'windwp/nvim-autopairs', disable = vscode } -- Autopairs
    use { 'numToStr/Comment.nvim', disable = vscode } -- Comments with "gcc"
    use { 'folke/tokyonight.nvim', disable = vscode } -- Colorscheme

end)
