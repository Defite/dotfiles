#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo '=== Export current VS Code extensions ==='

code --list-extensions

code --list-extensions > $DOTFILES_DIR/vscode/extensions.list
