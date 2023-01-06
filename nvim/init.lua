
-- Global
require('global')


-- NOTE: Settings

if vim.g.vscode then
    -- VSCode
    require('vscode')
else
    -- Ordinary Neovim
    require('neovim')
end

-- Common
require('common')
