#!/usr/bin/env zsh

# Download oh-my-zsh plugins, if needed
ZSH_SYNTAX_HIGHLIGHTING_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
if [ ! -d "$ZSH_SYNTAX_HIGHLIGHTING_PATH" ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_SYNTAX_HIGHLIGHTING_PATH"
fi
FZF_ZSH_PLUGIN_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin"
if [ ! -d "$FZF_ZSH_PLUGIN_PATH" ]; then
  git clone https://github.com/unixorn/fzf-zsh-plugin.git "$FZF_ZSH_PLUGIN_PATH"
fi

# Set up oh-my-zsh
DISABLE_AUTO_UPDATE=true
ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(zsh-syntax-highlighting fzf-zsh-plugin git rust docker kubectl)
source $ZSH/oh-my-zsh.sh

# Fix fzf with fzf-zsh-plugin (broken as of 11/10/2022)
# - https://github.com/unixorn/fzf-zsh-plugin/issues/50
# - https://github.com/unixorn/fzf-zsh-plugin/issues/69
export FZF_DEFAULT_COMMAND=
export FZF_ALT_C_COMMAND=
export FZF_CTRL_T_COMMAND=

# Make af-magic's $my_gray brighter
typeset +H my_gray="$FG[243]"

preexec() {
  cmd_start_seconds=$EPOCHREALTIME
}

precmd() {
  if [ $cmd_start_seconds ]; then
    cmd_end_seconds=$EPOCHREALTIME
    cmd_elapsed_seconds=$cmd_end_seconds-$cmd_start_seconds
    cmd_elapsed_seconds_fmt=$(printf '%.*fs\n' 3 $cmd_elapsed_seconds)
  else
    cmd_elapsed_seconds_fmt="0s"
  fi
}

exit_code_with_color() {
  exit_code=$?
  if [[ ${exit_code} -eq 0 ]]; then
    echo "%{$fg[green]%}$exit_code%{$reset_color%}"
  else
    echo "%{$fg[red]%}$exit_code%{$reset_color%}"
  fi
}

# Primary prompt
PS1='%{$FG[243]%}%n@%m:$FG[032]%~$(git_prompt_info) $FG[105]%(!.#.$)%{$reset_color%} '
PS2='%{$FG[105]%}\ %{$reset_color%}'

# Right prompt
RPS1=''
RPS1+='$(exit_code_with_color)'
RPS1+=' $FG[243]${cmd_elapsed_seconds_fmt}'

# User settings
if [ -f "$HOME/.shell_config" ]; then
  source "$HOME/.shell_config"
fi
