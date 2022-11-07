#!/usr/bin/env bash

# Set prompt
export PS1='\w \$ '

# Set terminal colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Set up large history
export HISTSIZE=5000
export HISTFILESIZE=5000

# User settings
if [ -f "$HOME/.shell_config" ]; then
	source "$HOME/.shell_config"
fi
