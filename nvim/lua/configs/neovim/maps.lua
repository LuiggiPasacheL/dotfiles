
-- Navigation
vim.keymap.set('n',"<C-h>", "<C-w>h")
vim.keymap.set('n',"<C-l>", "<C-w>l")
vim.keymap.set('n',"<C-k>", "<C-w>k")
vim.keymap.set('n',"<C-j>", "<C-w>j")

-- Save and exit files
vim.keymap.set('n',"<leader>w", ":w<CR>")
vim.keymap.set('n',"<leader>q", ":q<CR>")

-- NvimTree
vim.keymap.set('n','<C-A-e>', ':NvimTreeToggle<CR>')
vim.keymap.set('n','<leader>e', ':NvimTreeToggle<CR>')

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

