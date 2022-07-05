#!/usr/bin/env bash

# Short aliases
alias v='vim'
alias g='git'
alias d='docker'
alias dc='docker-compose'
alias k='kubectl'
alias gr='go run .'
alias gf='goimports -w .'
alias gb='go build'
alias gv='go vet ./...'
alias gt='go test ./...'
alias gi='go install'
alias gc='go clean'
alias gd='dlv debug'
alias gdt='dlv test'
alias gg='goimports -w . && go build && go vet ./... && go test ./...'

# Memorable aliases
alias hex='hecate'

# Variant: ls
alias lsc='CLICOLOR_FORCE=1 ls -G'

# Variant: grep
alias grepc='grep --color=always' # Always use color, even when redirecting output
function greph() { # Always include first line (e.g., header)
  IFS= read -r header
  echo "$header"
  grep "$1"
}

# Variant: diff
alias dp='diff -Naur' # patch

# Variant: colordiff
alias di='colordiff -Naur' # patch
alias dm='colordiff --suppress-common-lines -w --width $(tput cols)' # minimal
alias ds='colordiff --side-by-side -w --width $(tput cols) --suppress-common-lines' # side-by-side, minimal
alias dsa='colordiff --side-by-side -w --width $(tput cols)' # side-by-side, all lines

# New: What is my IP?
alias ip='ipconfig getifaddr en0'

# New: Get first and last lines
alias first='head -1'
alias last='tail -1'
