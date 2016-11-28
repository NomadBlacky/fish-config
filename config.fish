# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#rbenv
set -x PATH $HOME/.rbenv/bin $PATH
rbenv init - fish | source

set -x PATH $HOME/.cask/bin $PATH
set -x PATH $HOME/bin/activator-dist-1.3.10/bin $PATH
set -x PATH $HOME/.conscript/bin $PATH
set -x EDITOR 'emacsclient -nw'
set -x PATH $HOME/.evm/bin $PATH
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH

# Load local functions.
for file in $HOME/.config/fish/functions/local/*.fish
  source $file
end
