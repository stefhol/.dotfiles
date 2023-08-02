source ~/.zshenv
source ~/.zshextra
source $ANTIDOTE_SOURCE
antidote load
export ANTIDOTE_HOME=~/.cache/antidote
antidote bundle <~/.zsh_plugins>~/.zsh_plugins.zsh
autoload -U promptinit; promptinit
prompt bart 
source ~/.zsh_plugins.zsh
neofetch

