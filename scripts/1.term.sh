#!/usr/bin/env bash

# PATH
export PATH=/usr/local/bin:$PATH

# COLOR
force_color_prompt=yes
export CLICOLOR=1
export TERM="xterm-color"
#export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# LOCALE
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# EDITOR
export EDITOR=/usr/bin/nano

USER="`id -un`"