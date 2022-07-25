#!/usr/bin/env bash

# find
f() {
  find . -name "*$1*"
}

# Allows you to search for any text in any file recursively.
# Usage: ft "my string" *.php
ft() {
  find . -name "$2" -exec grep -il "$1" {} \;
}

alias fixEol='sed -i "s/\r$//"'

alias tf='tail -f'

alias edit='open -e'
alias numFiles='echo $(ls -1 | wc -l)'

alias rmZoneIdentifier="find . -name '*Zone.Identifier' -type f -delete"

alias size='du -sh'                             # get folder size
alias sizer='du -h -c'                          # get and print folder size for all folders, recursively
alias disks='df -H -l'                          # show available disk space
alias dirspace='du -ah --max-depth=1 | sort -hr -T .'

# cd
alias ~='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

cdl() { cd "$@"; ll; }

#mkdir
alias mkdir='mkdir -pv'
alias rmdir='rm -rf'

mcd () {
    mkdir $1;
    cd $1
}

# archive
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}
