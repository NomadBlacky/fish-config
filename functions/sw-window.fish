function sw-window
	wmctrl -l | peco | cut -d ' ' -f 1 | xargs wmctrl -i -a
end
