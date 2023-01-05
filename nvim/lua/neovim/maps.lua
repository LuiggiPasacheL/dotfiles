local nnoremap = require('global.keymap').nnoremap

-- NERDTree
nnoremap('<C-A-e>', ':NvimTreeFocus<CR>')
nnoremap('<leader>e', ':NvimTreeToggle<CR>')

-- Git
nnoremap('<leader>g', '<cmd>G<CR>')

-- Todos
nnoremap('<leader>t', '<cmd>TodoQuickFix<CR>')

-- Telescope
nnoremap('<leader>ff', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')
nnoremap('<leader>ft', '<cmd>TodoTelescope<CR>')

