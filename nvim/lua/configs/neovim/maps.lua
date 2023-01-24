
-- Navigation
vim.keymap.set('n',"<C-h>", "<C-w>h")
vim.keymap.set('n',"<C-l>", "<C-w>l")
vim.keymap.set('n',"<C-k>", "<C-w>k")
vim.keymap.set('n',"<C-j>", "<C-w>j")

-- Save and exit files
vim.keymap.set('n',"<leader>q", "<CMD>q<CR>")
vim.keymap.set('n',"<leader>w", "<CMD>w<CR>")

-- NvimTree
vim.keymap.set('n','<C-A-e>', '<CMD>NvimTreeFocus<CR>')
vim.keymap.set('n','<leader>e', '<CMD>NvimTreeFocus<CR>')

-- Git
vim.keymap.set('n','<leader>g', '<CMD>G<CR>')

-- Telescope
vim.keymap.set('n','<C-p>', '<CMD>Telescope find_files<cr>')
vim.keymap.set('n','<leader>b', '<CMD>Telescope buffers<cr>')
vim.keymap.set('n','<C-s>', '<CMD>Telescope tresitter<cr>')
vim.keymap.set('n','<C-f>', '<CMD>Telescope live_grep<cr>')
vim.keymap.set('n','<leader>tt', '<CMD>Telescope ')
