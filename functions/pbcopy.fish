# Defined in - @ line 0
function pbcopy --description 'alias pbcopy=xsel -bi'
	xsel -bi $argv;
end
