
-- Navigation
vim.keymap.set('n',"<C-j>", "<CMD>call VSCodeNotify('workbench.action.navigateDown')<CR>")
vim.keymap.set('n',"<C-k>", "<CMD>call VSCodeNotify('workbench.action.navigateUp')<CR>")
vim.keymap.set('n',"<C-h>", "<CMD>call VSCodeNotify('workbench.action.navigateLeft')<CR>")
vim.keymap.set('n',"<C-l>", "<CMD>call VSCodeNotify('workbench.action.navigateRight')<CR>")

-- Move editors
vim.keymap.set('n',"<C-S-j>", "<CMD>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>")
vim.keymap.set('n',"<C-S-k>", "<CMD>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>")
vim.keymap.set('n',"<C-S-h>", "<CMD>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>")
vim.keymap.set('n',"<C-S-l>", "<CMD>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>")

-- File explorer
vim.keymap.set('n',"<C-A-e>", "<CMD>call VSCodeNotify('workbench.explorer.fileView.focus')<CR>")
vim.keymap.set('n',"<leader>e", "<CMD>call VSCodeNotify('workbench.explorer.fileView.focus')<CR>")

-- Git
vim.keymap.set('n',"<leader>g", "<CMD>call VSCodeNotify('magit.status')<CR>")

-- Set NoHL
vim.keymap.set('n', "<ESC>", "<CMD>nohlsearch<CR>")

-- File search
vim.keymap.set('n',"<C-s>", "<CMD>call VSCodeNotify('workbench.action.gotoSymbol')<CR>")

-- Zen mode
vim.keymap.set('n',"<leader>z", "<CMD>call VSCodeNotify('workbench.action.toggleZenMode')<CR>")

-- Go to link
vim.keymap.set('n',"gl", "<CMD>call VSCodeNotify('editor.action.openLink')<CR>")

-- Format document
vim.keymap.set('n',"<leader>f", "<CMD>call VSCodeNotify('editor.action.formatDocument')<CR>")

-- Commend line
vim.keymap.set('x', "gc", "<Plug>VSCodeCommentary")
vim.keymap.set('n', "gc", "<Plug>VSCodeCommentary")
vim.keymap.set('o', "gc", "<Plug>VSCodeCommentary")
vim.keymap.set('n', "gcc", "<Plug>VSCodeCommentaryLine")

-- Panels
vim.keymap.set('n',"<C-space>", "<CMD>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>")
vim.keymap.set('n',"<C-S-space>", "<CMD>call VSCodeNotify('workbench.action.toggleAuxiliaryBar')<CR>")
vim.keymap.set('n',"<S-space>", "<CMD>call VSCodeNotify('workbench.action.togglePanel')<CR>")

vim.keymap.set('n',"<leader>t", "<CMD>call VSCodeNotify('todo-tree-view.focus')<CR>")

-- LSP
vim.keymap.set('n', "<leader>dn", "<CMD>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>")
vim.keymap.set('n', "<leader>dp", "<CMD>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>")

vim.keymap.set('n', "gD", "<CMD>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>")
vim.keymap.set('n', "gr", "<CMD>call VSCodeNotify('references-view.findReferences')<CR>")
vim.keymap.set('n', "gi", "<CMD>call VSCodeNotify('references-view.findImplementations')<CR>")
vim.keymap.set('n', "gh", "<CMD>call VSCodeNotify('editor.action.showDefinitionPreviewHover')<CR>")
vim.keymap.set('n', "<leader>o", "<CMD>call VSCodeNotify('workbench.action.gotoSymbol')<CR>")

-- QuickFix
vim.keymap.set('n', "<leader>a", "<CMD>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>")

-- Folding
vim.keymap.set('n', "za", "<CMD>call VSCodeNotify('editor.toggleFold')<CR>")
vim.keymap.set('n', "zo", "<CMD>call VSCodeNotify('editor.unfold')<CR>")
vim.keymap.set('n', "zc", "<CMD>call VSCodeNotify('editor.fold')<CR>")
vim.keymap.set('n', "zr", "<CMD>call VSCodeNotify('editor.unfoldAll')<CR>")
vim.keymap.set('n', "zm", "<CMD>call VSCodeNotify('editor.foldAll')<CR>")
