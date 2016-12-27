function git-show-commit
	set -e c
    git log --oneline $argv | peco | read c
    if [ $c ]
        git show $argv (echo $s | grep -oP '^\w+')
    end
end
