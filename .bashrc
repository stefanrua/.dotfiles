# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Editor
export EDITOR='vi'
export VISUAL='vi'

# Path
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$HOME/go/bin:$PATH"
export PATH

# Prompt
export GIT_PS1_SHOWDIRTYSTATE=1
source /usr/share/git-core/contrib/completion/git-prompt.sh
export PS1='\w $(__git_ps1 "(%s) ")\\$ '

# Aliases
alias vi='nvim'
alias t='tmux'
alias x='startx'
alias poweroff='systemctl poweroff'
alias suspend='systemctl suspend'
alias hibernate='systemctl hibernate'
alias reboot='systemctl reboot'
alias mkdatedir='mkdir $(date --rfc-3339=date)'
