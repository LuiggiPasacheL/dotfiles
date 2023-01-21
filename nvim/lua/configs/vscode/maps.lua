
-- Save and exit files
vim.keymap.set('n','<leader>q', "<CMD>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>")
vim.keymap.set('n','<leader>w', "<CMD>call VSCodeNotify('workbench.action.files.save')<CR>")

-- File search
vim.keymap.set('n','<C-p>', "<CMD>Ex<CR>")
vim.keymap.set('n','<C-o>', "<CMD>call VSCodeNotify('workbench.action.quickOpenLeastRecentlyUsedEditor')<CR>")
vim.keymap.set('n','<C-s>', "<CMD>call VSCodeNotify('workbench.action.gotoSymbol')<CR>")

-- Zen mode
vim.keymap.set('n','<leader>z', "<CMD>call VSCodeNotify('workbench.action.toggleZenMode')<CR>")

-- Git
vim.keymap.set('n','<leader>g', "<CMD>call VSCodeNotify('magit.status')<CR>")

-- Go to link
vim.keymap.set('n','gl', "<CMD>call VSCodeNotify('editor.action.openLink')<CR>")

-- Format document
vim.keymap.set('n','<leader>f', "<CMD>call VSCodeNotify('editor.action.formatDocument')<CR>")

-- Commend line
vim.keymap.set('n','gcc', "<CMD>call VSCodeNotifyRange('editor.action.commentLine', getline('.'), getline('.') + v:count1, 1)<CR>")
vim.keymap.set('v','gcc', "<CMD>call VSCodeNotifyVisual('editor.action.commentLine', 1)<CR>")

-- Secondary bar
vim.keymap.set('n','<leader>t', "<CMD>call VSCodeNotify('todo-tree-view.focus')<CR>")
