function fish_user_key_bindings
	read -l theme < $OMF_CONFIG/theme
  # Prepare packages key bindings paths
  set -l key_bindings $OMF_CONFIG/key_binding?.fish \
                      {$OMF_CONFIG,$OMF_PATH}/pkg/*/key_bindings.fish \
                      {$OMF_CONFIG,$OMF_PATH}/themes/$theme/key_binding?.fish
  # Source all keybindings collected
  for file in $key_bindings
    source $file
  end

  bind \cr peco_select_history

  # Call original key bindings if existent
#  functions -q __original_fish_user_key_bindings
#    and __original_fish_user_key_bindings
end
