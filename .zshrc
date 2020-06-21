#!/usr/bin/env zsh

# Set up oh-my-zsh
ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git docker kubectl zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Primary prompt
PS1='$FG[032]%~$(git_prompt_info) $FG[105]%(!.#.$)%{$reset_color%} '
PS2='%{$FG[105]%}\ %{$reset_color%}'

# Right prompt
RPS1='${return_code}'
(( $+functions[virtualenv_prompt_info] )) && RPS1+='$(virtualenv_prompt_info)'
RPS1+=' %{$my_gray%}%n@%m [%D{%T %-m/%-d}]%{$reset_color%}%'

# Git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# User settings
if [ -f "$HOME/.bash_config" ]; then
  source "$HOME/.bash_config"
fi
