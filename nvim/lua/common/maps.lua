
-- Copy to clipboard
vim.keymap.set('v','<leader>y', '"+y')
vim.keymap.set('n','<leader>Y', '"+yg_')
vim.keymap.set('n','<leader>y', '"+y')
vim.keymap.set('n','<leader>yy', '"+yy')

-- Paste from clipboard <C-S-v>

-- Navigation
vim.keymap.set('n',"<C-h>", "<C-w>h")
vim.keymap.set('n',"<C-l>", "<C-w>l")
vim.keymap.set('n',"<C-k>", "<C-w>k")
vim.keymap.set('n',"<C-j>", "<C-w>j")

-- Reselecting when indenting multiple times
vim.keymap.set('v',"<", "<gv")
vim.keymap.set('v',">", ">gv")

-- Move lines
vim.keymap.set('v',"J", ":m '>+1<CR>gv")
vim.keymap.set('v',"K", ":m '<-2<CR>gv")

-- Vim S(z)urround
vim.cmd[[
silent! nmap <unique><silent> zd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> zr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> zdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
silent! nmap <unique><silent> zrb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

" add
silent! map <unique> za <Plug>(operator-sandwich-add)
" delete
silent! xmap <unique> zd <Plug>(operator-sandwich-delete)
" replace
silent! xmap <unique> zr <Plug>(operator-sandwich-replace)
]]
