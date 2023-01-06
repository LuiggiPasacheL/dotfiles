
local opt = vim.opt
local g = vim.g

opt.nu = true
opt.relativenumber = true

opt.mouse = 'a'

g.tokyonight_transparent_sidebar = true
g.tokyonight_transparent = true
opt.background = "dark"

vim.cmd("colorscheme tokyonight")
