
# Dotfiles

## Commands

Clone into your home directory
```sh
git clone https://github.com/LuiggiPasacheL/dotfiles ~/.dotfiles
```

Backup for old dir config
```sh
cd ~/.config
mv nvim nvim.bak
mv fish fish.bak
mv starship.toml starship.toml.bak
```

Copy configuration dir config
```sh
cd ~/.config
cp ~/.dotfiles/nvim nvim
cp ~/.dotfiles/fish fish
cp ~/.dotfiles/starship.toml starship.toml
```
