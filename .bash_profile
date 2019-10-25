#!/usr/bin/env bash

# Apply settings in .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
