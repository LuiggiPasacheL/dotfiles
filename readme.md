
# Dotfiles

Clone into your home directory
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

Install starship
```sh
curl -sS https://starship.rs/install.sh | sh
```

Install antigen
```sh
curl -L git.io/antigen > ~/.config/antigen.zsh
```

Install neovim requirements
> g++ 
```sh
sudo dnf install g++
```

Copy configuration dir config
```sh
cd ~
ln -s ~/.dotfiles/.zshrc
cd ~/.config
ln -s ~/.dotfiles/nvim
cp ~/.dotfiles/starship.toml starship.toml
```

