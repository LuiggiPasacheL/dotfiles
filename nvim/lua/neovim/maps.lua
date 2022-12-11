local nnoremap = require('utils.keymap').nnoremap

-- Save and exit files
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")

-- Navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- NERDTree

nnoremap('<C-A-e>', ':NvimTreeFocus<CR>')
nnoremap('<leader>e', ':NvimTreeToggle<CR>')

-- Git
nnoremap('<leader>g', '<cmd>Neogit<CR>')

-- Todos
nnoremap('<leader>t', '<cmd>TodoQuickFix<CR>')

-- Telescope
nnoremap('<leader>ff', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')
nnoremap('<leader>ft', '<cmd>TodoTelescope<CR>')

