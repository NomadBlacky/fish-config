# Defined in - @ line 2
function weblio
	echo $argv | xargs -n1 | sed -E "s/^/https:\/\/ejje.weblio.jp\/content\//" | xargs -IURL w3m URL
end
