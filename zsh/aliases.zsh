#!/bin/sh
alias reload!='exec "$SHELL" -l'
# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias dc="cd ~/Documents"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias clr='clear'
