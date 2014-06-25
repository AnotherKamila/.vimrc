#!/bin/bash

# symlink to ~/.vimrc
VIMRC="$HOME/.vimrc"
if [[ -L "$VIMRC" ]]; then
	rm -f "$VIMRC"  # if it's a symlink, just silently overwrite
fi
if [[ -f "$VIMRC" ]]; then
	rm -i "$VIMRC"  # if it is a regular file, ask, and if the user does
			# not remove it, they will receive errors about that,
			# but the rest can still work
fi
ln -s "$PWD/.vimrc" "$HOME/.vimrc"

# get plugins
git submodule init
git submodule update
