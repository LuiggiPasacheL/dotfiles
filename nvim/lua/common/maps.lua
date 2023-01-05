local nnoremap = require('global.keymap').nnoremap
local vnoremap = require('global.keymap').vnoremap

vim.g.mapleader = " "
vim.g.camelcasemotion_key = ','

-- Save and exit files
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")

-- Copy to clipboard
vnoremap('<leader>y', '"+y')
nnoremap('<leader>Y', '"+yg_')
nnoremap('<leader>y', '"+y')
nnoremap('<leader>yy', '"+yy')

-- Paste from clipboard
nnoremap('<leader>p','"+p')
nnoremap('<leader>P','"+P')
vnoremap('<leader>p','"+p')
vnoremap('<leader>P','"+P')

-- Copy to clipboard
vnoremap('C-S-c', '"+y')
nnoremap('C-S-c', '"+yg_')
nnoremap('C-S-c', '"+y')

-- Paste from clipboard
nnoremap('<leader>p','"+p')
nnoremap('<leader>P','"+P')
vnoremap('<leader>p','"+p')
vnoremap('<leader>P','"+P')

-- Navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")

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
