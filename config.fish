# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#rbenv
set -x PATH $HOME/.rbenv/bin $PATH
rbenv init - fish | source

alias e="emacsclient ."
set -x PATH $HOME/.cask/bin $PATH
alias emacs='emacs -nw'
set -x PATH $HOME/bin/activator-dist-1.3.10/bin $PATH
alias gs="git status"
alias gcm="git commit -m"
alias gf="git fetch"
alias gpu="git push"
alias gd="git diff"
alias gadda="git add --all"
set -x PATH $HOME/.conscript/bin $PATH
set -x EDITOR 'emacs -q -nw'
