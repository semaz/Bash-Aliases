#!/usr/bin/env bash

alias tm='tmux attach || tmux new -s main'

alias apt='sudo apt-get'

alias c='clear'

alias g='git'

# Detect which `ls` flavor is in use
export LS_OPTIONS='--color=auto'
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # macOS `ls`
	colorflag="-G"
fi

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
alias l.='ls -d .*'
alias ll='ls -lha'
# List only directories
alias lsd="ls -lF | grep --color=never '^d'"

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#sudo
alias su='sudo -i'

# get rc
get_rc_path() {
  if [ -f ~/.bash_aliases ]
  then
     echo ".bash_aliases";
  elif [ -f ~/.bash_profile ]
  then
     echo ".bash_profile";
  elif [ -f ~/.bash_rc ]
  then
     echo ".bash_rc";
  elif [ -f ~/.bashrc ]
  then
     echo ".bashrc";
  else
     echo "Can't find bach config file";
     exit 1;
  fi
}

# ps
alias ps2='ps -ef | grep -v $$ | grep -i '
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psme='ps -ef | grep $USER --color=always '

# other
alias hg='history|grep '
alias diff='colordiff'

# php
alias cmp='composer'
alias sf='php bin/console'
alias cept='php vendor/bin/codecept'
alias phinx='php vendor/bin/phinx'

command_exists () { type "$1" &> /dev/null ; }
