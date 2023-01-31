
require('configs.settings')
require('configs.maps')

if Not_vscode() then
    -- Ordinary Neovim
    require('configs.neovim')
else
    -- VSCode
    require('configs.vscode')
end
