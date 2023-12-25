
-- Copy to clipboard
vim.keymap.set('x','<leader>y', '"+y')
vim.keymap.set('n','<leader>Y', '"+yg_')
vim.keymap.set('n','<leader>y', '"+y')
vim.keymap.set('n','<leader>yy', '"+yy')

-- Nohl
vim.keymap.set('n', '<ESC>', '<CMD>nohlsearch<CR>')

-- Navigation
vim.keymap.set('n',"<C-h>", "<C-w>h")
vim.keymap.set('n',"<C-l>", "<C-w>l")
vim.keymap.set('n',"<C-k>", "<C-w>k")
vim.keymap.set('n',"<C-j>", "<C-w>j")

-- Move editors
vim.keymap.set('n',"<C-S-h>", "<C-w>H")
vim.keymap.set('n',"<C-S-l>", "<C-w>L")
vim.keymap.set('n',"<C-S-k>", "<C-w>K")
vim.keymap.set('n',"<C-S-j>", "<C-w>J")

-- NvimTree
vim.keymap.set('n','<C-A-e>', '<CMD>NvimTreeFocus<CR>')
vim.keymap.set('n','<leader>e', '<CMD>NvimTreeFocus<CR>')

-- Git
vim.keymap.set('n','<leader>gs', '<CMD>vertical rightbelow G<CR>')
vim.keymap.set('n','<leader>gc', '<CMD>Telescope git_branches<CR>')
vim.keymap.set("n", "<leader>gg", "<CMD>!tmux new-window -c " .. vim.fn.getcwd() .. " -- lazygit <CR><CR>", { desc = "Tmux Git Go" })

-- Telescope
vim.keymap.set('n','<C-p>', '<CMD>Telescope git_files<cr>')
vim.keymap.set('n','<C-f>', '<CMD>Telescope live_grep<cr>')
vim.keymap.set('n','<C-t>', '<CMD>Telescope treesitter<cr>')
vim.keymap.set('n','<leader>t', '<CMD>TodoTelescope<cr>')
vim.keymap.set('n','<leader>b', '<CMD>Telescope buffers<cr>')
vim.keymap.set('n','<leader>tf', '<CMD>Telescope find_files<cr>')
vim.keymap.set('n','<leader>tg', '<CMD>Telescope git_status<cr>')
vim.keymap.set('n','<leader>tc', '<CMD>Telescope colorscheme<cr>')

-- Restart LSP
vim.keymap.set('n','<leader>r', '<CMD>LspRestart<cr>')
