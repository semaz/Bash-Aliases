#!/usr/bin/env bash

for f in $(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")/scripts/*.sh
do
	source "$f";
done
