function cdr
	tail -100 $HOME/.config/fish/tmp/recent_dir.list | \
	ruby -ne 'BEGIN{$list=[]}; $list << $_; END{puts $list.reverse.uniq}' | \
	peco --layout=bottom-up | read d
	
	if [ $d ]
	   cd $d
	end
end
