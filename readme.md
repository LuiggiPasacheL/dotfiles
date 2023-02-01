
# Dotfiles

Clone into your home directory
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

Install starship
```sh
curl -sS https://starship.rs/install.sh | sh
```

Install neovim requirements
> g++ 
```sh
sudo dnf install g++ # Or according your distro
```

Copy configuration dir config
```sh
cd ~
cd ~/.config
ln -s ~/.dotfiles/nvim
cp ~/.dotfiles/starship.toml starship.toml
```

