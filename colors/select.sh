#!/bin/bash
SCRIPTS_DIR="base16-shell/scripts"
XRESOURCES_DIR="base16-xresources/xresources"

doit() {
    if [ -f "$1/$2" ]; then
        ln -sf "$1/$2" "$3"
    fi
}

doit "$SCRIPTS_DIR" "$1.sh" colors.sh && chmod +x colors.sh
doit "$XRESOURCES_DIR" "$1-256.Xresources" .Xresources
