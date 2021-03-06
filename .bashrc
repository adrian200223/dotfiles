#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias battery="upower -i `upower -e | grep BAT` | grep percentage | sed 's/ * / /g'"

. ~/.git-prompt.sh
export PATH="~/Programacion/automatizacion:$PATH"
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[33m\]$(__git_ps1 "(%s)")\[\033[37m\]\$\[\033[00m\] '
