function funcsave-local
	funcsave $argv[1]
	 cd $HOME/.config/fish/functions/
	 mv $argv[1].fish local/
end
