
# Dotfiles

Clone into your home directory
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

Install antigen
```sh
curl -L git.io/antigen > ~/.config/antigen.zsh
```

Install starship
```sh
curl -sS https://starship.rs/install.sh | sh
```

Install neovim requirements
> Packer
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim 
```
> g++ 
```sh
sudo dnf install g++ # Or according your distro
```

Copy configuration dir config
```sh
cd ~
ln -s ~/.dotfiles/.zshrc
cd ~/.config
ln -s ~/.dotfiles/nvim
ln -s ~/.dotfiles/starship.toml
```

