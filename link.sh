#!/bin/bash
# link all files specified in TARGETS

while IFS=: read -r src target; do
    ln -s $@ "$PWD/$src" "$HOME/$target"
done < TARGETS
