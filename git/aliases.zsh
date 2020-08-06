#!/bin/sh
if command -v hub >/dev/null 2>&1; then
	alias git='hub'
fi

alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glga="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -s -a'
alias gco='git checkout'
alias gb='git branch -v'
alias gbcp='git copy-branch-name'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gcam='git commit -s -a -m'
alias gs='git status -sb'
alias gpr='gp && git pr'
alias glnext="git log --graph --abbrev-commit --decorate --format=format:'%C(bold red)%h%C(reset) 🌵%C(bold yellow)%D%C(reset) %C(#2767d4)%f%Creset%n%C(white)%B%C(reset)%n ✍️ %C(dim white) %an%C(reset)            %C(cyan)⌚ %ar%C(reset)%n%n' --all"

if command -v svu >/dev/null 2>&1; then
	alias gtpatch='git tag `svu p`; svu c'
	alias gtminor='git tag `svu m`; svu c'
	alias gtn='git tag `svu n`; svu c'
fi

gi() {
	curl -s "https://www.gitignore.io/api/$*"
}
