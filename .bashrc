#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s histappend # allows multiple dirs to write to history
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/vlamitin/.sdkman"
[[ -s "/home/vlamitin/.sdkman/bin/sdkman-init.sh" ]] && source "/home/vlamitin/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# for fzf. Requires fd!
export FZF_DEFAULT_COMMAND='ifinstalled fd && fd --hidden --follow --no-ignore --exclude ".git" --exclude "node_modules"'

source /home/vlamitin/.config/broot/launcher/bash/br
