#!/usr/bin/env bash

file="$1"
cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/pdf-previews"
mkdir -p "$cache_dir"

key=$(printf '%s' "$file" | sha1sum | awk '{print $1}')
img="$cache_dir/$key.png"

if [[ ! -f "$img" ]]; then
    pdftoppm -f 1 -singlefile -png "$file" "$cache_dir/$key" >/dev/null 2>&1
fi

kitty +kitten icat \
  --clear \
  --transfer-mode=file \
  --stdin=no \
  --place "${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@0x0" \
  "$img"
