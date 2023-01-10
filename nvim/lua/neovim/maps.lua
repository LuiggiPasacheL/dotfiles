
local opts = { noremap = true, silent = true }

-- Save and exit files
vim.keymap.set('n',"<leader>w", ":w<CR>")
vim.keymap.set('n',"<leader>q", ":q<CR>")

-- NvimTree
vim.keymap.set('n','<C-A-e>', ':NvimTreeToggle<CR>')

-- Git
vim.keymap.set('n','<leader>g', '<cmd>G<CR>')

-- Telescope
vim.keymap.set('n','<C-p>', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n','<leader>b', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n','<C-s>', '<cmd>Telescope tresitter<cr>')
vim.keymap.set('n','<C-f>', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n','<leader>tt', ':Telescope ')

-- Move lines
vim.keymap.set('v',"J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v',"K", ":m '<-2<CR>gv=gv")

-- Lsp
vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>d', ':Telescope diagnostics<cr>', opts)

return {
    on_attach = function(client, bufnr)
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        local bufopts = { noremap = true, silent = true, buffer = bufnr }

        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
        vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, bufopts)
        vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
        vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
        vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, bufopts)
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
        vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    end,
}
