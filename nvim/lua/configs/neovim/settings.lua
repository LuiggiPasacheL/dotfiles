
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.mouse = 'a'
vim.opt.background = "dark"

vim.cmd.colorscheme("tokyonight")

vim.api.nvim_create_autocmd({ "VimLeave" }, {
    callback = function()
        vim.o.guicursor = "a:ver25"
    end }
)

vim.g.copilot_assume_mapped = true -- Tab to accept completion
