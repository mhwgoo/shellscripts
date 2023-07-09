#!/bin/sh

if [ "$(uname)" = "Darwin" ]; then
    python3 main.py "$@"
else
    python main.py "$@"
fi
