function git-push-set-upstream-origin
	git push --set-upstream origin (git rev-parse --abbrev-ref HEAD) $argv;
end
