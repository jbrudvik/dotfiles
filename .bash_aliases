#!/usr/bin/env bash

# Fix tmux issues
alias less='TERM=xterm less'
alias man='TERM=xterm man'
alias git='TERM=xterm git'
alias top='TERM=xterm top'
alias gotop='TERM=xterm gotop'
alias watchexec='TERM=xterm watchexec'

# Short aliases
alias t='tmux'
alias g='git'
alias h='hx'
alias f='hx $(fzf)'
alias d='docker'
alias k='kubectl'

# Memorable aliases
alias hex='hecate'

# Variant: ls
alias lsc='CLICOLOR_FORCE=1 ls -G'

# New: What is my IP?
alias ip='ipconfig getifaddr en0'

# New: Get first and last lines
alias first='head -1'
alias last='tail -1'

# Variant: dig
alias digsimple='dig +nostats +nocomments +nocmd'
