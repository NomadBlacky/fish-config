function killing
	ps aux | peco | read p
	echo $p | grep -oP '\d+' | head -1 | read p
	if [ $p ]
		echo "kill $argv $p"
		kill $argv $p
	end
end
