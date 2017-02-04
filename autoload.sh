#!/usr/bin/env bash

SCRIPTS_PATH=$(dirname "${BASH_SOURCE}")

for f in $SCRIPTS_PATH/scripts/*.sh
do
	source "$f";
done