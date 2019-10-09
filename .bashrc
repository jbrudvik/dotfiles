#!/usr/bin/env bash

# Proxies
if [ -f ~/.proxies ]; then
  source ~/.proxies
fi

# Set up large history that is appended to on shell exit
export HISTSIZE=5000
export HISTFILESIZE=5000
shopt -s histappend

# Default editor used by other programs
export EDITOR='vim'

# Ensure that /usr/local/bin overrides /usr/bin
export PATH=/usr/local/bin:${PATH}

# Set terminal colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Highlight grep matches
export GREP_OPTIONS='--color=auto'

# Customize prompt
export PS1='\w \$ '

# TODO: Consider factoring out EDITOR, GREP_OPTIONS to a shared config somewhere (to make this even shorter)

# Aliases
if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi

# Local settings
if [ -f ~/.zsh_local ]; then
  source ~/.zsh_local
fi
