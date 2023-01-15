
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

vim.cmd.colorscheme("tokyonight")

-- Diagnositcs signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.g.mapleader = " "
vim.g.camelcasemotion_key = ','
