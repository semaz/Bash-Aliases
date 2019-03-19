#!/usr/bin/env bash

tf() {
    if command_exists multitail; then
        multitail -c "$@"
    else
        tail -f "$@"
    fi
}