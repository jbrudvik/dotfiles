#!/usr/bin/env bash

# Fix tmux issues
alias less='TERM=xterm less'
alias man='TERM=xterm man'
alias vim='TERM=xterm vim'
alias git='TERM=xterm git'
alias top='TERM=xterm top'
alias gotop='TERM=xterm gotop'
alias watchexec='TERM=xterm watchexec'
alias bat='TERM=xterm bat'

# Single-letter aliases
alias t='tmux'
alias g='git'
alias h='hx'
alias d='docker'
alias k='kubectl'
alias c='cargo'
alias b='br'

# Replace ls with exa
alias l='exa'
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'
alias lla='exa -la'

# r = ripgrep on hidden files with pager
function r {
	rg -.p "$*" | less -R
}

# f = Use fzf to open files in helix
function f {
	result=$(rg --hidden -l "" | fzf --preview 'bat --style=numbers --color=always --line-range :500 {}')
	if [ -z "${result}" ]; then
		# echo "No file selected"
		true
	else
		hx "${result}"
	fi
}

function ide {
}

# Other helpful/memorable aliases
alias ip='ipconfig getifaddr en0'
alias first='head -1'
alias last='tail -1'
alias hex='hecate'
alias digsimple='dig +nostats +nocomments +nocmd'
