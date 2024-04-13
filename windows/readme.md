
# My Windows Dotfiles

**Install packages requirements**
> ripgrep, g++ or gcc and nodejs 

**Clone into your home directory**
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

**Install starship, tpm and antigen**
```sh
winget install --id Starship.Starship
```

**Download nerdfonts** <!-- (TODO: This commands are not working) -->
```sh
mkdir ~/AppData/Local/Microsoft/Windows/Fonts
cd ~/AppData/Local/Microsoft/Windows/Fonts
curl.exe -o RobotoMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/RobotoMono.zip
curl.exe -o JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
curl.exe -o Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
```

**Copy configuration**
```sh
cd ~
cp ~/.dotfiles/windows/Microsoft.PowerShell_profile.ps1 ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Local\nvim" -Target "$HOME\.dotfiles\nvim"
New-Item -Path ~/.dotfiles/nvim -ItemType SymbolicLink -Value ~/AppData/Local/nvim
cd ~/.config
cp ~/.dotfiles/starship.toml starship.toml
```
