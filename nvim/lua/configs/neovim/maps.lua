-- Nohl
vim.keymap.set('n', "<ESC>", "<CMD>nohlsearch<CR>")

-- Navigation
vim.keymap.set('n', "<C-h>", "<C-w>h")
vim.keymap.set('n', "<C-l>", "<C-w>l")
vim.keymap.set('n', "<C-k>", "<C-w>k")
vim.keymap.set('n', "<C-j>", "<C-w>j")

-- Move editors
vim.keymap.set('n', "<C-S-h>", "<C-w>H")
vim.keymap.set('n', "<C-S-l>", "<C-w>L")
vim.keymap.set('n', "<C-S-k>", "<C-w>K")
vim.keymap.set('n', "<C-S-j>", "<C-w>J")
vim.keymap.set('n', "<leader>v", "<CMD>vsplit<CR>")
vim.keymap.set('n', "<leader>s", "<CMD>split<CR>")

-- NvimTree
vim.keymap.set('n', "<C-A-e>", "<CMD>NvimTreeFindFile<CR>")
vim.keymap.set('n', "<leader>e", "<CMD>NvimTreeFindFile<CR>")
vim.keymap.set('n', "<leader>E", "<CMD>Oil<CR>")

-- Git
vim.keymap.set('n', "<leader>g", "<CMD>vertical rightbelow G<CR>")
vim.keymap.set('n', "<leader>gh", "<CMD>Telescope git_branches<CR>")
vim.keymap.set('n', "<leader>gl", "<CMD>!tmux new-window -c " .. vim.fn.getcwd() .. " -- lazygit <CR><CR>",
    { desc = "Tmux Git Go" })

-- Telescope
vim.keymap.set('n', "<C-p>", "<CMD>Telescope git_files<cr>")
vim.keymap.set('n', "<C-f>", "<CMD>Telescope find_files<cr>")
vim.keymap.set('n', "<C-g>", "<CMD>Telescope live_grep<cr>")
vim.keymap.set('n', "<C-A-o>", "<CMD>Telescope treesitter<cr>")
vim.keymap.set('n', "<leader><leader>", "<CMD>Telescope buffers<cr>")
vim.keymap.set('n', "<leader>o", "<CMD>Telescope treesitter<cr>")
vim.keymap.set('n', "<leader>t", "<CMD>TodoTelescope<cr>")
vim.keymap.set('n', "<leader>cc", "<CMD>Telescope colorscheme<cr>")

-- Restart LSP
vim.keymap.set('n', "<leader>r", "<CMD>LspRestart<cr>")

vim.keymap.set('n', "<leader>k", "<cmd>cprev<CR>zz")
vim.keymap.set('n', "<leader>j", "<cmd>cnext<CR>zz")
vim.keymap.set('n', "<leader>q", "<cmd>cclose<CR>zz")

-- Terminal
local term = "zsh"
if vim.loop.os_uname().sysname == "Windows_NT" then
    term = "powershell"
end
vim.keymap.set('n', "<leader>nt", "<cmd>vsplit term://".. term .. "<CR>")
vim.keymap.set('n', "<leader>Nt", "<cmd>tabnew term://".. term .. "<CR>")

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
