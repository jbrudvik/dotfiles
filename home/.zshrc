#!/usr/bin/env zsh

# Initialize Starship prompt
eval "$(starship init zsh)"

# Initialize Antidote zsh plugin manager
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

###############################
# Secure ShellFish (iOS) config
###############################

if [[ "$LC_TERMINAL" = "ShellFish" ]]; then
  export LC_CTYPE=
  # export LANG="C.UTF-8"
fi

# Load cross-shell settings
source "$HOME/.shellrc"
