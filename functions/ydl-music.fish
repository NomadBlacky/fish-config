# Defined in - @ line 2
function ydl-music
	youtube-dl -o "~/Dropbox/Musics/%(title)s.%(ext)s" --no-part --cache-dir /tmp -x $argv
end
