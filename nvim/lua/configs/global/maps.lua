
-- Copy to clipboard
vim.keymap.set({'n', 'v'}, "<leader>y", [["+y]])
vim.keymap.set('n', "<leader>Y", [["+Y]])

vim.keymap.set('x', "<leader>p", [["_dP]])

vim.keymap.set({'n', 'v'}, "<leader>d", [["_d]])

-- Paste from clipboard
vim.keymap.set('n',"<C-S-v>", '"+p')

-- Reselecting when indenting multiple times
vim.keymap.set('x',"<", "<gv")
vim.keymap.set('x',">", ">gv")

-- Move lines
vim.keymap.set('x','J', ":m '>+1<CR>gv")
vim.keymap.set('x','K', ":m '<-2<CR>gv")
