# Path to Oh My Fish install.
set -q XDG_DATA_HOME
and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Load local configurations
set configlocal $HOME/.config/fish/config-local.fish
if [ $configlocal ]
    source $configlocal
end

# Load local functions.
for file in $HOME/.config/fish/functions/local/*.fish
    source $file
end

set -x PATH $HOME/.cask/bin $PATH
set -x PATH $HOME/bin/activator-dist-1.3.10/bin $PATH
set -x CONSCRIPT_HOME $HOME/.conscript
set -x PATH $CONSCRIPT_HOME/bin $PATH
set -x EDITOR 'emacsclient -nw'
set -x PATH $HOME/.evm/bin $PATH
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH
set -x LESS '-R'
set -x LESSOPEN '| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/sls.fish