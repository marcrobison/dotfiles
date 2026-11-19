#!/usr/bin/env bash

file=$(find "$HOME" -type f -iname "*.pdf"|
    fzf \
      --prompt="PDF ❯ " \
      --layout=reverse \
      -i \
)

if [[ -n "$file" ]]; then
	setsid -f zathura "$file" > /dev/null 2>&1
fi

