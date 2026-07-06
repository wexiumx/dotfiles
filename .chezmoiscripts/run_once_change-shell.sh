#!/bin/sh

FISH_PATH=$(grep -m1 '/fish$' /etc/shells)

if [ -z "$FISH_PATH" ]; then
  echo "fish not found in /etc/shells, skipping shell change" >&2
  exit 0
fi

if [ "$SHELL" != "$FISH_PATH" ]; then
  chsh -s "$FISH_PATH"
fi
