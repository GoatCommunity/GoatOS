autoload -U colors && colors

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

if [ -f "/usr/share/spaceship-prompt/spaceship.zsh" ]; then
    source /usr/share/spaceship-prompt/spaceship.zsh
fi

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ll='ls -l'
alias la='ls -la'
