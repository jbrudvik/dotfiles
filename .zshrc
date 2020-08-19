#!/usr/bin/env zsh

# Set up oh-my-zsh
ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(zsh-syntax-highlighting git docker kubectl)
source $ZSH/oh-my-zsh.sh

# Make af-magic's $my_gray brighter
typeset +H my_gray="$FG[243]"

preexec() {
  cmd_start_seconds=$EPOCHREALTIME
}

precmd() {
  if [ $cmd_start_seconds ]; then
    cmd_end_seconds=$EPOCHREALTIME
    cmd_elapsed_seconds=$cmd_end_seconds-$cmd_start_seconds
    cmd_elapsed_seconds_fmt=$(printf '%.*f\n' 3 $cmd_elapsed_seconds)
  fi
}

# Primary prompt
PS1='$FG[032]%~$(git_prompt_info) $FG[105]%(!.#.$)%{$reset_color%} '
PS2='%{$FG[105]%}\ %{$reset_color%}'

# Right prompt
RPS1='${return_code}'
(( $+functions[virtualenv_prompt_info] )) && RPS1+='$(virtualenv_prompt_info)'
RPS1+=' $FG[101]${cmd_elapsed_seconds_fmt} %{$my_gray%}%n@%m%{$reset_color%}%'

# User settings
if [ -f "$HOME/.bash_config" ]; then
  source "$HOME/.bash_config"
fi
