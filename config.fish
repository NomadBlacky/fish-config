# Load local configurations
set configlocal $HOME/.config/fish/config-local.fish
if [ $configlocal ]
    source $configlocal
end

# Load local functions.
for file in $HOME/.config/fish/functions/local/*.fish
    source $file
end

set -x EDITOR 'emacsclient -nw'

# Key bindings
bind \cw sw-window

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /home/blacky/projects/oss/serverless/node_modules/tabtab/.completions/sls.fish

# Execute tmux
if [ $SHLVL -lt 2 ]
    tmux
end
