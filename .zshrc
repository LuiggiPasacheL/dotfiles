
eval "$(starship init zsh)"

source ${HOME}/.config/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle django
antigen bundle command-not-found
antigen bundle git-auto-fetch
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory autocd extendedglob notify correctall nomatch globdots

unsetopt beep

zstyle :compinstall filename "${ZDOTDIR:-$HOME}/.zshrc"

HYPHEN_INSENSITIVE="true"

autoload -Uz compinit
compinit

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

bindkey -v
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^I' expand-or-complete

antigen apply

alias v='nvim .'
alias vi='nvim'
alias zshconfig="nvim ~/.zshrc"
