function find-file-and-open-with-emacs
	find . -type f | peco | read p
if [ $p ]
emacsclient -nw $p
end
end
