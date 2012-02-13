PS1="$PS1[\$(parse_git_branch)]> "

export CLICOLOR=1

source ~/.completion/git.sh
source ~/.alias/git.sh
source ~/.alias/gradle.sh
source ~/.export/*.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
