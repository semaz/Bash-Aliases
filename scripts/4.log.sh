#!/usr/bin/env bash

alias tf='tailfunc'

tailfunc() {
    if command_exists multitail; then
        multitail -c "$@"
    else
        tail -f "$@"
    fi
}