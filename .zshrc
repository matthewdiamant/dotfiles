# Oh My Zsh
export ZSH="~/.oh-my-zsh"
ZSH_THEME="common"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

base16_helios

# remove zsh autocorrect
unsetopt correct_all

# Bash completion
. ~/git-completion.bash

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Projects/go

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# screen reattach
alias sr='screen -r'

# neovim
alias vi='nvim'
alias vim='nvim'

# rvm
. ~/.rvm/scripts/rvm

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Haskell
[ -f "/Users/matthewdiamant/.ghcup/env" ] && source "/Users/matthewdiamant/.ghcup/env" # ghcup-env

# Python
alias python=/usr/local/bin/python3

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
