function cdgr --description 'Move to root of the git repository'
    if git rev-parse --is-inside-work-tree > /dev/null ^ /dev/null
        cd (git rev-parse --show-toplevel)
    end
end
