#!/usr/bin/env bash

alias flushDNS='dscacheutil -flushcache && killall -HUP mDNSResponder'
alias myip="curl http://ipecho.net/plain; echo"
alias trace='mtr --report-wide --curses $1'
alias openPorts='lsof -i | grep LISTEN'
alias edithosts='sudo nano /etc/hosts'