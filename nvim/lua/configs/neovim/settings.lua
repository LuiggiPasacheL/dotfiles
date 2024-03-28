vim.o.splitright       = true
vim.opt.splitbelow     = true

vim.opt.nu             = true
vim.opt.relativenumber = true
vim.opt.signcolumn     = "yes"
vim.opt.mouse          = 'a'
vim.opt.background     = "dark"
vim.opt.showmode       = false

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.fillchars      = { fold = " " }
vim.opt.foldmethod     = "indent"
vim.opt.foldenable     = true
vim.opt.foldlevel      = 99

vim.api.nvim_create_autocmd({ "VimLeave" }, {
    callback = function()
        vim.o.guicursor = "a:ver25"
    end
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function()
        local function f()
            vim.cmd [[TSEnable highlight]]
        end
        vim.defer_fn(f, 100)
    end
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})


vim.g.copilot_assume_mapped = true -- Tab to accept completion
