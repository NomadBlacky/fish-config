function open-magit-for-key-bindings
	emacsclient -ue '(magit-status)'
        commandline -f repaint
end
