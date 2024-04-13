
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

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob
unsetopt beep nomatch notify

bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add scripts to path
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
export NVM_COMPLETION=true

if [ -s "$HOME/.zsh_profile" ]; then
  source "$HOME/.zsh_profile"
fi

if [ -s "$HOME/.zsh_aliases" ]; then
  source "$HOME/.zsh_aliases"
fi

# Add lines to specific configuration. Example:
# Lines added by external software (gcloud)
# OR
# Add lines to specific path

