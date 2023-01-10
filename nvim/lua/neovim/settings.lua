
local opt = vim.opt
local g = vim.g

opt.nu = true
opt.relativenumber = true

opt.mouse = 'a'

g.tokyonight_transparent_sidebar = true
g.tokyonight_transparent = true
opt.background = "dark"

vim.cmd.colorscheme("tokyonight")

-- Diagnositcs signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.g.mapleader = " "
vim.g.camelcasemotion_key = ','
