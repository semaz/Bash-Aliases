#!/bin/bash

SCRIPTS_PATH=$(dirname "${BASH_SOURCE}")

if grep -q "~/$SCRIPTS_PATH/autoload.sh" ~/.bash_rc;
then
    echo "Scripts already installed."
else
    echo "\n# BashScripts autoload \nsource ~/$SCRIPTS_PATH/autoload.sh" >> ~/.bash_rc;
    echo "BashScripts installed.";
    exec bash -l;
fi;