PS1='\[\033[0;32m\]\u@\h\[\033[0;36m\]  \w \[\033[0;35m\]$(__git_ps1)\n\[\033[0;32m\]$\[\033[0m\] '

function __git_ps1()
{
	BRANCH=$(git branch 2>/dev/null | grep '\*' | cut -c 3-)
	GIT_ROOT=$(git rev-parse --show-toplevel 2>/dev/null)
	if [ -n "$BRANCH" ] \
		&& ! echo -n $GIT_ROOT | grep $(echo $HOME)$ 1>/dev/null; then
		echo " $BRANCH"
	fi
}

