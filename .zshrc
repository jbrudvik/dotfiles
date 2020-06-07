#!/usr/bin/env zsh

# Set up oh-my-zsh
ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git docker kubectl zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Set prompt
# TODO: Set prompt (L & R)

# Q: Do I need to swap this with above? So the path settings are correct (before running oh-my-zsh config)
# User settings
if [ -f "$HOME/.bash_config" ]; then
  source "$HOME/.bash_config"
fi
