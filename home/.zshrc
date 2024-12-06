#!/usr/bin/env zsh

# Initialize sheldon shell plugin manager
eval "$(sheldon source)"

# Initialize Starship prompt
eval "$(starship init zsh)"

# Secure ShellFish (iOS) config
if [[ "$LC_TERMINAL" = "ShellFish" ]]; then
	export LC_CTYPE=
	# export LANG="C.UTF-8"
fi

# Load cross-shell settings
source "$HOME/.shellrc"
