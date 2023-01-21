-- Common
require('configs.common')

if vim.g.vscode then
    -- VSCode
    require('configs.vscode')
else
    -- Ordinary Neovim
    require('configs.neovim')
end
