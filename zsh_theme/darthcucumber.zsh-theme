#symbols
AT_SYMBOL="@"
ARR_SYMBOL="❯"
SEP_SYMBOL=":"

#color
USER_COLOR="%F{001}"
DIR_COLOR="%F{033}"
BRANCH_COLOR="%F{001}"

# username() {
# 	echo "$AT_SYMBOL$USER_COLOR%n%f $ARR_SYMBOL "
# }

dir() {
	echo "$DIR_COLOR%1~%f $ARR_SYMBOL "
}

cmd_status() {
	echo "%(?..%F{001} %?)%f"
}

root() {
	USER_SYMBOL="\u2b50"
	if [[ $EUID -ne 0 ]]; then
		USER_SYMBOL="\u26a1 "
	fi
	echo "$USER_SYMBOL"
}

# Set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="${BRANCH_COLOR}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f $ARR_SYMBOL "
ZSH_THEME_GIT_PROMPT_DIRTY="💩"
ZSH_THEME_GIT_PROMPT_CLEAN="✨"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

PROMPT='%b$(root)$(dir)$(git_prompt_info)%b '
RPROMPT='$(cmd_status)'
