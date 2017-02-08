function gitrv
	git log --oneline | peco | read -l commit
if [ $commit ]
echo $commit | grep -oP '^\w+' | read -l hash
git revert $argv $hash
end
end
