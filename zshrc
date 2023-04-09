if command -v tmux &> /dev/null; then
    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi


ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions web-search)

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
export ZSH="/Users/tommy/.oh-my-zsh"
# load oh my zsh
source $ZSH/oh-my-zsh.sh

# powerlevel10k config file if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
[ -f "/Users/tommy/.ghcup/env" ] && source "/Users/tommy/.ghcup/env" # ghcup-env
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#foundry
export PATH="$PATH:/Users/tommy/.foundry/bin"



# Go-related environment variables
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/golib


# java
export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
. "$HOME/.cargo/env"

# aliases
alias ls='exa'
alias ll='exa -Fl'
alias lla='exa -aFl --color=auto'
alias tree='exa -T'




