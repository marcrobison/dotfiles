
# env vars to set at login, zsh settings in ~/.zshrc

export EDITOR="nvim"
export PATH="/home/marcman/.local/share/bin:$PATH"
export PATH="$PATH:/home/marcman/matlab/bin"
export PATH=$PATH:~/.npm-global/bin
export PATH=$PATH:/usr/lib/emscripten
export PATH=$PATH:"/home/marcman/altera/13.1/quartus/bin"
export XDG_PICTURES_DIR="~/Pictures"
export BROWSER="firefox"
export MANPAGER='nvim +Man!'
export HASS_SERVER=http://192.168.1.140:8123
export HASS_TOKEN=$(cat .keys)
export QSYS_ROOTDIR="/home/marcman/altera/13.1/quartus/sopc_builder/bin"

if [ -z "$SSH_CONNECTION" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec start-hyprland
fi
