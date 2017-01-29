function pclip
	if [ -r /dev/stdin ]
cat -| peco | xsel -bi
end
end
