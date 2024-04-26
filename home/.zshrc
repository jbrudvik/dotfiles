#!/usr/bin/env zsh

#######################
# Generated zinit setup
#######################

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
# zinit light zdharma-continuum/zinit-annex-rust # TODO: This isnt' working like I want...
# TODO: Add other plugins? Probably: git rust docker kubectl

# Fix fzf with fzf-zsh-plugin (broken as of 11/10/2022)
# - https://github.com/unixorn/fzf-zsh-plugin/issues/50
# - https://github.com/unixorn/fzf-zsh-plugin/issues/69
export FZF_DEFAULT_COMMAND=
export FZF_ALT_C_COMMAND=
export FZF_CTRL_T_COMMAND=

###############################
# Secure ShellFish (iOS) config
###############################

if [[ "$LC_TERMINAL" = "ShellFish" ]]; then
  export LC_CTYPE=
  # export LANG="C.UTF-8"
fi

#############################
# Initialize prompt: Starship
#############################

eval "$(starship init zsh)"

###########################
# Load cross-shell settings
###########################

source "$HOME/.shellrc"
