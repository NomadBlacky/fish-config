# Load local configurations
set configlocal $HOME/.config/fish/config-local.fish
if [ -e $configlocal ]
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
if test $SHLVL -lt 2; and status --is-interactive
    tmux
end

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/blacky/projects/nodejs/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /home/blacky/projects/nodejs/serverless/node_modules/tabtab/.completions/slss.fish
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/blacky/google-cloud-sdk/path.fish.inc' ]; . '/home/blacky/google-cloud-sdk/path.fish.inc'; end
