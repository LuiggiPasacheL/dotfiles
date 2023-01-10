local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.hlsearch = false
opt.incsearch = true
opt.smartindent = true

opt.wrap = false

vim.g.sandwich_no_default_key_mappings = 1 -- disable s for surround and using z
vim.g.operator_sandwich_no_default_key_mappings = 1

vim.g.mapleader = " "
vim.g.camelcasemotion_key = ','
