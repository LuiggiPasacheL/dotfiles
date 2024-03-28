Not_vscode = function()
    return vim.g.vscode == nil
end

require("configs.global")

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

require("lazy").setup("plugins", {
    ui = {
        border = "rounded",
    }
})

if Not_vscode() then
    -- Ordinary Neovim
    require("configs.neovim")
else
    -- VSCode
    require("configs.vscode")
end
