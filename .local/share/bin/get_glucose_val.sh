#!/bin/bash

source /home/marcman/.local/share/bin/venv/bin/activate
val=$(python /home/marcman/.local/share/bin/glucose.py)
low=70
pretty_high=200
high=240

if [ "$val" -le "$low" ]; then
	class="low"
elif [ "$val" -le "$pretty_high" ]; then
	class="normal"
elif [ "$val" -le "$high" ]; then
	class="pretty_high"
elif [ "$val" -le "$high" ]; then
	class="normal"
else
	class="high"
fi

jq -n -c --arg text "$val" --argjson class "[\"$class\"]" \
  '{text: $text, class: $class}'
