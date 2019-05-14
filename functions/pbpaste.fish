# Defined in - @ line 0
function pbpaste --description 'alias pbpaste=xsel -bo'
	xsel -bo $argv;
end
