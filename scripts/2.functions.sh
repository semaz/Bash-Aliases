#!/usr/bin/env bash

alias c='clear'

#ls
alias l.='ls -d .*'
alias ll='ls -la'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#sudo
alias root='sudo -i'
alias su='sudo -i'

# bash
alias bashsrc='source ~/.bash_rc'
alias bashedit='nano ~/.bash_rc && source ~/.bash_rc'

# ps
alias ps2='ps -ef | grep -v $$ | grep -i '
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psme='ps -ef | grep $USER --color=always '

# other

alias hg='history|grep '
alias diff='colordiff'

alias composer='php /usr/local/bin/composer'

command_exists () { type "$1" &> /dev/null ; }

instbash(){
    if ! grep -q "$1" ~/.bash_rc; then
        echo "\n# $2 \n$1; fi" >> ~/.bash_rc;
    fi;
}

# find
alias qfind="find . -name "
#function f {
#	arg_path=$1 && shift
#	find $arg_path -wholename "*/path-to-ignore/*" -prune -o $* -print
#}