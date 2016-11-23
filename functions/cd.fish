function cd
	builtin cd  $argv;
	pwd >> $HOME/.config/fish/tmp/recent_dir.list
end
