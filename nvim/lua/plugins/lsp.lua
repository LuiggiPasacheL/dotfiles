return {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
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
    },
    config = function()
        local lsp = require('lsp-zero')
        lsp.preset('recommended')

        lsp.ensure_installed({
            'sumneko_lua',
            'tsserver',
            'html',
            'cssls',
            'emmet_ls',
            'pyright'
        })

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            update_in_insert = false,
            underline = true,
            severity_sort = false,
            float = true,
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { remap = false, buffer = bufnr }

            vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
            vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
            vim.keymap.set('n', 'gh', vim.lsp.buf.signature_help, opts)

            vim.keymap.set('n', '<C-.>', vim.lsp.buf.code_action, opts)

            vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)
            vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, opts)
            vim.keymap.set('n', '<leader>p', vim.diagnostic.goto_prev, opts)
            vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
            vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
            vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
                opts)
        end)

        local cmp = require('cmp')
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-u>'] = cmp.mapping.scroll_docs(4),
            ['<C-space>'] = cmp.mapping.complete(),
            ['<C-s>'] = cmp.mapping.complete(), -- for windows terminal (ctrl space not working)
            ['<C-e>'] = cmp.mapping.abort(),
            ['<C-k>'] = cmp.mapping.select_prev_item(),
            ['<C-j>'] = cmp.mapping.select_next_item(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
        })

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings
        })

        lsp.nvim_workspace()

        lsp.setup()
    end,
    cond = Not_vscode()
}
