PS1="$PS1[\$(parse_git_branch)]> "

export CLICOLOR=1

source ~/.completion/git.sh
source ~/.alias/git.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export https_proxy=http://sensis-proxy-vs.sensis.com.au:8080
export http_proxy=$https_proxy

alias gs='git status'
alias gpr='git pull rebase'
alias gp='git push'
alias gc='git commit'
alias ga='git add .'
