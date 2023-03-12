

-- Copy to clipboard
vim.keymap.set('x','<leader>y', '"+y')
vim.keymap.set('n','<leader>Y', '"+yg_')
vim.keymap.set('n','<leader>y', '"+y')
vim.keymap.set('n','<leader>yy', '"+yy')

-- Paste from clipboard
vim.keymap.set('n','<C-S-v>', '"+p')

-- Reselecting when indenting multiple times
vim.keymap.set('x',"<", "<gv")
vim.keymap.set('x',">", ">gv")

-- Move lines
vim.keymap.set('x',"J", ":m '>+1<CR>gv")
vim.keymap.set('x',"K", ":m '<-2<CR>gv")

-- Vim S(z)urround
vim.keymap.set('n', 'zab', '<Plug>(operator-sandwich-add)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)')
vim.keymap.set('n', 'zdb', '<Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)')
vim.keymap.set('n', 'zrb', '<Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)')

vim.keymap.set('n', 'za', '<Plug>(operator-sandwich-add)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)')
vim.keymap.set('n', 'zd', '<Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)')
vim.keymap.set('n', 'zr', '<Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)')

vim.keymap.set('x', 'za', '<Plug>(operator-sandwich-add)')
vim.keymap.set('x', 'zd', '<Plug>(operator-sandwich-delete)')
vim.keymap.set('x', 'zr', '<Plug>(operator-sandwich-replace)')
