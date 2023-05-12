#!/bin/sh

if [ -d "$1" ]; then
    exa -l -s time --git --color=never "$1" | awk '$7~/^[^ADMLPV]([^DT]|$)/ { print }'
else
    exa -l -s time --git --color=never | awk '$7~/^[^ADMLPV]([^DT]|$)/ { print }'
fi
