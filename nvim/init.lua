
-- Global
require('global')


-- NOTE: Settings

-- Common
require('common')
if vim.g.vscode then
    -- VSCode
    require('vscode')
else
    -- Ordinary Neovim
    require('neovim')
end


