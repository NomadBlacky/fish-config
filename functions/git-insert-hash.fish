function git-insert-hash
	git log --oneline $argv | peco | read l
	commandline -i (echo $l | grep -o -P '^\w+')
end
