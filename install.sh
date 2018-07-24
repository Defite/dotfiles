#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Execute scripts

echo '=== Install VS Code extensions ==='

. "$DOTFILES_DIR/vscode/vscode-extensions.sh"
