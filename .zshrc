
# Plugins
source $HOME/.config/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-completions
antigen bundle zsh-history-substring-search
antigen bundle lukechilds/zsh-nvm # nvm auto install

antigen apply

# Prompt
eval "$(starship init zsh)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob
unsetopt beep nomatch notify

bindkey -v
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR="nvim"

export NVM_DIR="$HOME/.nvm"
export NVM_COMPLETION=true

# NOTE: To add new elements to path create
# ~/.zshenv file
# Example: export PATH="$PATH:$HOME/go/bin"

# aliases
alias tv='tmux new-session -A -s `basename $PWD` nvim .'
alias v='nvim .'

# Note: To add new sources create
# ~/.zlogin file
# Example: source /usr/share/doc/fzf/examples/key-bindings.zsh for fzf keybindings
