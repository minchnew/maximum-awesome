# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# PS1="\[\e[1;30;47m\]| \u @ \w \[\e[0m\]\n\[\e[1;36m\]| => \[\e[0m\]"

# aliases
# alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cl='clear'

set -o vi
export EDITOR="vim"

# Mac OS X specific
export CLICOLOR=1
PATH=~/bin:/usr/local/share/python:/usr/local/bin:$PATH
source /usr/local/Library/Contributions/brew_bash_completion.sh
alias ls='ls -G'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# . ~/bin/z.sh
