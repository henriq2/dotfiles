PS1='\[\033[0;32m\]\u@\h\[\033[0;36m\]  \w \[\033[0;35m\]$(__git_ps1)\n\[\033[0;32m\]$\[\033[0m\] '

function __git_ps1()
{
	BRANCH=$(git branch 2>/dev/null | grep '\*' | cut -c 3-)
	if [ -n "$BRANCH" ]; then echo " $BRANCH"; fi
}

