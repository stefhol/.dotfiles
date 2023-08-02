source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load
export ANTIDOTE_HOME=~/.cache/antidote
antidote bundle <~/.zsh_plugins>~/.zsh_plugins.zsh
autoload -U promptinit; promptinit
prompt pure
source ~/.zsh_plugins.zsh
neofetch

