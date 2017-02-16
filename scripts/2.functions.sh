#!/usr/bin/env bash

alias c='clear'

alias g='git'

alias reloadBash="exec $SHELL -l"

# Detect which `ls` flavor is in use
export LS_OPTIONS='--color=auto'
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
	export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
	colorflag="-G"
	export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
alias l.='ls -d .*'
alias ll='ls -la'
# List only directories
alias lsd="ls -lF | grep --color=never '^d'"

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#sudo
alias root='sudo -i'
alias su='sudo -i'

# get rc
get_rc_path(){
    if [ -f "~/.bashrc" ]; then
        echo ".bashrc"
    else
        echo ".bash_rc"
    fi
}

# bash
alias bashsrc="source ~/$(get_rc_path)"
alias bashedit="nano ~/$(get_rc_path) && source ~/$(get_rc_path)"
bashinst(){
    if ! grep -q "$1" ~/$(get_rc_path); then
        echo "\n# $2 \n$1; fi" >> get_rc_path
    fi;
}

# ps
alias ps2='ps -ef | grep -v $$ | grep -i '
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psme='ps -ef | grep $USER --color=always '

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# other

alias hg='history|grep '
alias diff='colordiff'

alias composer='php /usr/local/bin/composer'

command_exists () { type "$1" &> /dev/null ; }