function cdg --description 'Move to the selected directory form `ghq list`'
ghq list --full-path | peco | read d && cd $d
end
