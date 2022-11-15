#!/usr/bin/env zsh

#######################
# Generated zinit setup
#######################

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit

(( ${+_comps} )) && _comps[zinit]=_zinit

###############
# zinit plugins
###############

zinit light zdharma-continuum/fast-syntax-highlighting
# Q: Do I want this? https://github.com/zsh-users/zsh-syntax-highlighting.git
zinit light zsh-users/zsh-autosuggestions
zinit light unixorn/fzf-zsh-plugin
# TODO: Add other plugins? git rust docker kubectl

# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

# Fix fzf with fzf-zsh-plugin (broken as of 11/10/2022)
# - https://github.com/unixorn/fzf-zsh-plugin/issues/50
# - https://github.com/unixorn/fzf-zsh-plugin/issues/69
export FZF_DEFAULT_COMMAND=
export FZF_ALT_C_COMMAND=
export FZF_CTRL_T_COMMAND=

# Load cross-shell settings
source "$HOME/.shellrc"

return

# TODO: Port what I want from these to p10k (maybe just in .p10k.zsh)

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
