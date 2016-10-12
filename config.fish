# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#rbenv
set -x PATH $HOME/.rbenv/bin $PATH
rbenv init - | source

alias e="emacsclient ."
set -x PATH /home/blacky/.cask/bin $PATH
alias gits="git status"
alias emacs='emacs -nw'
set -x PATH /home/blacky/bin/activator-dist-1.3.10/bin $PATH
alias gitcm="git commit -m"
set -x PATH /home/blacky/.conscript/bin $PATH
