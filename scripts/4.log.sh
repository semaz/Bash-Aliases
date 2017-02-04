#!/usr/bin/env bash

alias tf='tail-func'

tail-func() {
    if command_exists multitail; then
        multitail -c "$@"
    else
        tailf -f "$@"
    fi
}