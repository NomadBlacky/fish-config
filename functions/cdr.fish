function cdr
	tail -30 $HOME/.config/fish/tmp/recent_dir.list | sort | uniq | peco --layout=bottom-up | read d
	if [ $d ]
	   cd $d
	end
end
