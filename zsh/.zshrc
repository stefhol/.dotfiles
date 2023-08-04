source ~/.zshenv
source ~/.zshextra
source $ANTIDOTE_SOURCE
export LANG=en_US.UTF-8
autoload -Uz compinit
compinit
antidote load
export ANTIDOTE_HOME=~/.cache/antidote
antidote bundle <~/.zsh_plugins>~/.zsh_plugins.zsh
autoload -U promptinit; promptinit
prompt bart 
source ~/.zsh_plugins.zsh
alias neofetch="neofetch --no_config"
neofetch

