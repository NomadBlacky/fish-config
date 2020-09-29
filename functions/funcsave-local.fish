function funcsave-local
    set --local FUNCTIONS_DIR $HOME/.config/fish/functions/
    mkdir -p $FUNCTIONS_DIR/local/
    funcsave $argv[1]
    mv $FUNCTIONS_DIR/$argv[1].fish $FUNCTIONS_DIR/local/
end
