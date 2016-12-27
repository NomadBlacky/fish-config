function git-insert-hash
	set -e c
    git log --oneline $argv | peco | read c
    if [ $c ]
        commandline -i (echo $c | grep -o -P '^\w+')
    end
end
