# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#rbenv
set -x PATH $HOME/.rbenv/bin $PATH
rbenv init - fish | source

alias e="emacsclient ."
set -x PATH $HOME/.cask/bin $PATH
alias gits="git status"
alias emacs='emacs -nw'
set -x PATH $HOME/bin/activator-dist-1.3.10/bin $PATH
alias gitcm="git commit -m"
alias gitf="git fetch"
alias gitpu="git push"
alias gitd="git diff"
alias gitadda="git add --all"
set -x PATH $HOME/.conscript/bin $PATH
set -x EDITOR 'emacs -q -nw'
