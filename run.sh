#!/bin/sh

COMMAND="terraform $@"

if [ -n "$CLI" ] && [ $CLI = true ]; then
    COMMAND="$@"
fi

exec $COMMAND
