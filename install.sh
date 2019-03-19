#!/bin/bash

SCRIPTS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $SCRIPTS_PATH/scripts/2.functions.sh

if grep -q "$SCRIPTS_PATH/autoload.sh" ~/.bash_rc;
then
    echo "Scripts already installed."
else
    echo "\n# BashScripts autoload \nsource $SCRIPTS_PATH/autoload.sh" >> ~/.bash_rc;
    echo "BashScripts installed.";
    reloadBash;
fi;