function fish_user_key_bindings
    # Source all keybindings collected
    for file in $key_bindings
        source $file
    end

    bind \cr peco_select_history
    bind \eg git-insert-hash
    bind \eh backward-kill-word

    # Call original key bindings if existent
    #  functions -q __original_fish_user_key_bindings
    #    and __original_fish_user_key_bindings
end
