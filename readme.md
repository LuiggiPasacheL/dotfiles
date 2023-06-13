
# Dotfiles

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
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/RobotoMono.zip
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
```

Install requirements
> g++ and npm 
```sh
sudo dnf install g++
sudo dnf install nodejs
```

Copy configuration dir config
```sh
cd ~
ln -s ~/.dotfiles/.zshrc
ln -s ~/.dotfiles/.tmux.conf
cd ~/.config
ln -s ~/.dotfiles/nvim
cp ~/.dotfiles/starship.toml starship.toml
```
