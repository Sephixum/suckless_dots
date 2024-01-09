#!/bin/bash

if [[ -f "$(which wal)" ]]; then

	if [[ "$WAYLAND_DISPLAY" ]]; then
		wpg -ns "$1"
		~/.config/hypr/scripts/set_swww.sh "$1"
        else
		wpg -s "$1" 
		wal -n --theme base16-gruvbox-hard
		    # wpg -n "$1" --theme base16-gruvbox-hard
		    # feh --bg-center "$1"
        fi

	echo "$1" > "$HOME/.cache/wallpaper_path"
        cp ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
	pywal-discord -t default
	pywalfox update
	wal-telegram --wal

else
	echo "[!] 'pywal' is not installed"
fi
