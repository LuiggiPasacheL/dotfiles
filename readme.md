
# Dotfiles

## Comandos

```sh
# clone into your home directory
git clone https://github.com/LuiggiPasacheL/dotfiles .dotfiles
```

```sh
cd ~/.config
mv nvim nvim.bak
mv fish fish.bak
mv starship.toml starship.toml.bak
```

```sh
cd ~/.dotfiles
ln -s ~/.dotfiles/nvim nvim
ln -s ~/.dotfiles/fish fish
ln -s ~/.dotfiles/starship.toml starship.toml
```
