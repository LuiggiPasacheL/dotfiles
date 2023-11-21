
# My Windows Dotfiles

**Clone into your home directory**
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

**Install starship, tpm and antigen**
```sh
winget install --id Starship.Starship
```

**Download nerdfonts**
```sh
mkdir ~/AppData/Local/Microsoft/Windows/Fonts
cd ~/AppData/Local/Microsoft/Windows/Fonts
curl.exe -o RobotoMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/RobotoMono.zip
curl.exe -o JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
curl.exe -o Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
```

**Install requirements**
> g++ and npm 

**Copy configuration dir config**
```sh
cd ~
cp ~/.dotfiles/windows/Microsoft.PowerShell_profile.ps1 ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
New-Item -Path ~/.dotfiles/nvim -ItemType SymbolicLink -Value ~/AppData/Local/nvim
cd ~/.config
cp ~/.dotfiles/starship.toml starship.toml
```
