#!/usr/bin/env bash

for f in $(dirname "${0}")/scripts/*.sh
do
	source "$f";
done