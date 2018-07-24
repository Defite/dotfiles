#!/usr/bin/env bash

# List all VS Code extensions

echo '=== Current VS Code extensions ==='

code --list-extensions

echo '=== Install new extensions from file ==='

value=$(<extensions.list)
echo "$value"

EXTENSIONS=$value

for VARIANT in "code" \
               "code-insiders"
do
  if hash $VARIANT 2>/dev/null; then
    echo "Installing extensions for $VARIANT"
    for EXTENSION in ${EXTENSIONS[@]}
    do
      $VARIANT --install-extension $EXTENSION
    done
  fi
done

echo '=== All done, now restart VS Code ===';