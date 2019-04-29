# bash prompt
export PS1="\[$(tput bold)\]\[\033[38;5;10m\]\W \\$\[$(tput sgr0)\] "

# dotfiles
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# 99dev docker
eval $(docker-machine env $(99dev machine-name))

# Bash completion
. /usr/local/etc/bash_completion
. ~/git-completion.bash

# Misc aliases
alias chrome='open -a "Google Chrome"'
alias 88dev='99dev'
alias 00dev='99dev'

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Projects/go

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rvm
. ~/.rvm/scripts/rvm
