#!/usr/bin/env zsh

# Ensure that /usr/local/bin overrides /usr/bin
export PATH="/usr/local/bin:$PATH"

# Core zsh + oh-my-zsh setup
export ZSH="/Users/jbrudvik/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git docker kubectl zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User settings
if [ -f "$HOME/.zsh_config" ]; then
  source "$HOME/.zsh_config"
fi
