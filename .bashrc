#!/usr/bin/env bash

# Ensure that /usr/local/bin overrides /usr/bin
export PATH=/usr/local/bin:${PATH}

# Customize prompt
export PS1='\w \$ '

# Set terminal colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Set up large history that is appended to on shell exit
export HISTSIZE=5000
export HISTFILESIZE=5000
shopt -s histappend

# User settings
if [ -f "$HOME/.zsh_config" ]; then
  source "$HOME/.zsh_config"
fi
