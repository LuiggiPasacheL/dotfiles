vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.mouse = 'a'
vim.opt.background = "dark"

vim.api.nvim_create_autocmd({ "VimLeave" }, {
    callback = function()
        vim.o.guicursor = "a:ver25"
    end
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function ()
        local function f()
            vim.cmd [[TSEnable highlight]]
        end
        vim.defer_fn(f, 100)
    end
})

vim.g.copilot_assume_mapped = true -- Tab to accept completion
