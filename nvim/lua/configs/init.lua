-- Common
require('configs.settings')
require('configs.packer')
require('configs.maps')

if vim.g.vscode then
    -- VSCode
    require('configs.vscode')
else
    -- Ordinary Neovim
    require('configs.neovim')
end
