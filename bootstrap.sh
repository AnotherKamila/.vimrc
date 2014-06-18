#!/bin/bash

# symlink to ~/.vimrc
VIMRC="$HOME/.vimrc"
if [[ -f "$VIMRC" ]]; then
	if [[ -L "$VIMRC" ]]; then
		rm -f "$VIMRC"  # if it's a symlink, just silently overwrite
	else
		rm -i "$VIMRC"  # if it exists, ask, and if the user does not
				# remove it, they will receive errors about
				# that, but the rest can still work
	fi
fi
ln -s "$PWD/vimrc" "$HOME/.vimrc"

# get plugins
git submodule init
git submodule update
