#!/usr/bin/env bash

for f in $(dirname "${BASH_SOURCE}")/scripts/*.sh
do
	source "$f";
done