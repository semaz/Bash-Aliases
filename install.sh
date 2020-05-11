#!/bin/bash

SCRIPTS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $SCRIPTS_PATH/scripts/2.functions.sh

get_rc_path() {
  if [ -f ~/.bash_profile ]
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

if grep -q "$SCRIPTS_PATH/autoload.sh" ~/$(get_rc_path);
then
    echo "Scripts already installed."
else
    echo "\n# BashScripts autoload \nsource $SCRIPTS_PATH/autoload.sh" >> ~/$(get_rc_path);
    echo "BashScripts installed.";
    reloadBash;
fi;
