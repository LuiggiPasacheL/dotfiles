Not_vscode = function ()
    return vim.g.vscode == nil
end

vim.g.mapleader = " "
vim.g.camelcasemotion_key = ','
vim.g.sandwich_no_default_key_mappings = 1 -- disable s for surround and using z
vim.g.operator_sandwich_no_default_key_mappings = 1
vim.g.Guifont = "JetBrainsMono , 'Hack Nerd Font Mono', Consolas, 'Courier New', monospace"
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require('configs')
