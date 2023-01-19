
# Dotfiles

Clone into your home directory
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

Backup old dir config (if exists)
```sh
cd ~
mv .zshrc .zshrc.bak
cd ~/.config
mv nvim nvim.bak
# mv fish fish.bak # Uncomment for use fish
mv starship.toml starship.toml.bak
```

Clone zsh plugins
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
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
# ln -s ~/.dotfiles/fish # Uncomment for use fish
ln -s ~/.dotfiles/starship.toml
```

