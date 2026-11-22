#!/usr/bin/env bash


file=$(find "$HOME" \(\
	-path "$HOME/.*" \
	\) -prune -o -type f  -iname "*.pdf" -printf "%P\n"|
    fzf \
      --prompt="PDF ❯ " \
      --layout=reverse \
      -i \
)

if [[ -n "$file" ]]; then
	setsid -f zathura "$file" > /dev/null 2>&1
fi

