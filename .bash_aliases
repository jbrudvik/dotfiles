#!/usr/bin/env bash

# Short aliases
alias t='tmux'
alias g='git'
alias h='hx'
alias v='vim'
alias d='docker'
alias k='kubectl'
alias gor='go run .'
alias gof='goimports -w .'
alias gob='go build'
alias gov='go vet ./...'
alias got='go test ./...'
alias goi='go install'
alias goc='go clean'
alias god='dlv debug'
alias godt='dlv test'
alias gog='goimports -w . && go build && go vet ./... && go test ./...'
alias gc='gcloud'

# Memorable aliases
alias hex='hecate'
alias tower='gittower'

# Better top
alias top='gotop'

# Variant: ls
alias lsc='CLICOLOR_FORCE=1 ls -G'

# Variant: grep
alias grepc='grep --color=always' # Always use color, even when redirecting output
function greph() {                # Always include first line (e.g., header)
	IFS= read -r header
	echo "$header"
	grep "$1"
}

# Variant: diff
alias dp='diff -Naur' # patch

# Variant: colordiff
alias di='colordiff -Naur'                                                          # patch
alias dm='colordiff --suppress-common-lines -w --width $(tput cols)'                # minimal
alias ds='colordiff --side-by-side -w --width $(tput cols) --suppress-common-lines' # side-by-side, minimal
alias dsa='colordiff --side-by-side -w --width $(tput cols)'                        # side-by-side, all lines

# New: What is my IP?
alias ip='ipconfig getifaddr en0'

# New: Get first and last lines
alias first='head -1'
alias last='tail -1'

# Variant: dig
alias digsimple='dig +nostats +nocomments +nocmd'
