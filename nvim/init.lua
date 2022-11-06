-- Common settings
require('common')
if vim.g.vscode then
    -- VSCode settings
    require('vscode')
else
    -- Ordinary Neovim setting
    require('neovim')
end
