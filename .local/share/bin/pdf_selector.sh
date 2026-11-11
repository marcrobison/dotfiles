#!/usr/bin/env bash

file=$(find "$HOME" -type f -iname "*.pdf"|
    fzf \
      --prompt="PDF ❯ " \
      --height=100% \
      --layout=reverse \
      --border=rounded \
      --info=inline \
      --preview='~/.local/share/bin/pdf-preview.sh {}' \
      --preview-window='right:50%:wrap'
)

if [[ -n "$file" ]]; then
	setsid -f zathura "$file" > /dev/null 2>&1
fi

