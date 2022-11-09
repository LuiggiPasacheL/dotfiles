local nnoremap = require('utils.keymap').nnoremap
local vnoremap = require('utils.keymap').vnoremap
local xnoremap = require('utils.keymap').xnoremap

vim.g.mapleader = " "

-- Save and exit files
nnoremap('<leader>q', "<CMD>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>")
nnoremap('<leader>w', "<CMD>call VSCodeNotify('workbench.action.files.save')<CR>")

-- File search
nnoremap('<leader>ff', "<CMD>Ex<CR>")
nnoremap('<leader>fs', "<CMD>call VSCodeNotify('workbench.action.gotoSymbol')<CR>")
nnoremap('<leader>fb', "<CMD>call VSCodeNotify('workbench.action.quickOpenLeastRecentlyUsedEditor')<CR>")

-- Zen mode
nnoremap('<leader>z', "<CMD>call VSCodeNotify('workbench.action.toggleZenMode')<CR>")
nnoremap('<leader>g', "<CMD>call VSCodeNotify('magit.status')<CR>")

-- Go to link
nnoremap('gl', "<CMD>call VSCodeNotify('editor.action.openLink')<CR>")

-- Format document
nnoremap('<leader>f', "<CMD>call VSCodeNotify('editor.action.formatDocument')<CR>")

-- Commend line
nnoremap('gcc', "<CMD>call VSCodeNotifyVisual('editor.action.commentLine', 1)<CR>")
vnoremap('gcc', "<CMD>call VSCodeNotifyVisual('editor.action.commentLine', 1)<CR>")
xnoremap('gcc', "<CMD>call VSCodeNotifyVisual('editor.action.commentLine', 1)<CR>")

