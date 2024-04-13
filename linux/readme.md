
# My Linux Dotfiles

**Install packages requirements**
> ripgrep, g++ or gcc and nodejs (nvm preinstalled by default for zsh)

**Clone into your home directory**
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

**Install starship, tpm and antigen**
```sh
curl -sS https://starship.rs/install.sh | sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -L git.io/antigen > ~/.config/antigen.zsh
```

**Download nerdfonts** <!-- (TODO: This commands are not working) -->
```sh
mkdir ~/.fonts
cd ~/.fonts
curl -o RobotoMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/RobotoMono.zip
curl -o JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
curl -o Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
```

**Copy configuration**
```sh
cd ~
cp ~/.dotfiles/linux/.zshrc ~/.zshrc # zshrc must be edited by other apps, example: gcloud
ln -s ~/.dotfiles/linux/.zsh_profile
cp ~/.dotfiles/linux/.zsh_aliases ~/.zsh_aliases
ln -s ~/.dotfiles/linux/.tmux.conf
```
```sh
cd ~/.config
ln -s ~/.dotfiles/nvim
ln -s ~/.dotfiles/starship.toml starship.toml
```
