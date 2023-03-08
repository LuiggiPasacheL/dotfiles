
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.signcolumn = 'yes'

vim.opt.mouse = 'a'

vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

vim.cmd.colorscheme("tokyonight")
vim.g.Guifont = "JetBrainsMono , 'Hack Nerd Font Mono', Consolas, 'Courier New', monospace"

vim.api.nvim_create_autocmd({ "VimLeave" }, {
    callback = function()
        vim.o.guicursor = "a:ver25"
    end }
)
