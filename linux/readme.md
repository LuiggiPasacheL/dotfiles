
# My Linux Dotfiles

**Install packages requirements**
> ripgrep, g++ or gcc and nodejs

**Clone into your home directory**
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

**Install starship, tpm, mise and antigen**
```sh
curl -sS https://starship.rs/install.sh | sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl https://mise.run | sh
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
ln -s ~/.dotfiles/linux/.tmux.conf
cp ~/.dotfiles/linux/.zshrc ~/.zshrc # copy because it must be edited by user
ln -s ~/.dotfiles/linux/.zsh_configs
cp ~/.dotfiles/linux/.zsh_aliases ~/.zsh_aliases # copy because it must be edited by user
```
```sh
cd ~/.config
ln -s ~/.dotfiles/nvim
cp ~/.dotfiles/starship.toml starship.toml # starship must be personalizable according to host requirements
```
