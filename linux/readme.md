
# My Linux Dotfiles

Clone into your home directory
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

Install starship, tpm and antigen
```sh
curl -sS https://starship.rs/install.sh | sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -L git.io/antigen > ~/.config/antigen.zsh
```

Download nerdfonts
```sh
mkdir ~/.fonts
cd ~/.fonts
curl -o RobotoMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/RobotoMono.zip
curl -o JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
curl -o Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
```

Install requirements
> g++

Copy configuration dir config
```sh
cd ~
cp ~/.dotfiles/linux/.zshrc ~/.zshrc
ln -s ~/.dotfiles/linux/.zsh_profile
ln -s ~/.dotfiles/linux/.tmux.conf
cd ~/.config
ln -s ~/.dotfiles/nvim
cp ~/.dotfiles/starship.toml starship.toml
```
