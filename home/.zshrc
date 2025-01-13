#!/usr/bin/env zsh

# Shell history
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=2000
export SAVEHIST=1000

# Use Emacs-style keybindings
set -o emacs

# Initialize Antidote zsh plugin manager
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

# Initialize Starship prompt
eval "$(starship init zsh)"

# Secure ShellFish (iOS) config
if [[ "$LC_TERMINAL" = "ShellFish" ]]; then
    export LC_CTYPE=
    # export LANG="C.UTF-8"
fi

# Load cross-shell settings
source "$HOME/.shellrc"
