function vimr
	vim --servername (vim --serverlist) --remote $argv
end
