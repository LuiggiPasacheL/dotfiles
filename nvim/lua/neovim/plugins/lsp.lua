
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>d', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- this is for diagnositcs signs on the line number column
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Mason

require("mason").setup({
    ui =  {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "tsserver", "html", "cssls", 'emmet_ls', 'pyright' }
})

-- LSP servers

require('lspconfig')['sumneko_lua'].setup { -- Server with custom settings
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    'vim',
                    'awesome'
                }
            }
        }
    },
    capabilities = capabilities
}

require('lspconfig')['emmet_ls'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'htmldjango', 'typescriptreact', 'javascriptreact' , 'css', 'sass', 'scss', 'less' },
    init_options = {
        html = {
            options = {
                ["bem.enables"] = true,
            },
        },
    }
}

require('lspconfig')['html'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    capabilities = capabilities
}

require('lspconfig')['cssls'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    capabilities = capabilities
}

require('lspconfig')['tsserver'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    capabilities = capabilities
}

require('lspconfig')['pyright'].setup {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            },
        },
    },
}

-- Template lspconfig
-- require('lspconfig')['lsp_server_name'].setup {
--     on_attach = on_attach,
--     flags = {
--         debounce_text_changes = 150,
--     },
--     capabilities = capabilities
-- }
