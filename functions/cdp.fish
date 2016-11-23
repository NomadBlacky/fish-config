function cdp
	set depth 3
	if test (count $argv) != 0
	   set depth $argv[1]
	end
	find $HOME/projects/ -maxdepth $depth -type d | ruby -Ku -ne 'BEGIN{$list=[]};$list<<$_;END{puts $list.sort_by{|l|l.count("/")}}' | peco | read d
	cd $d
end
