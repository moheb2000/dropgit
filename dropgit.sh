#!/bin/sh

# Check if git is not installed on your system
if ! [ -x "$(command -v git)" ]; then
	echo "Dropgit Error: You don't have git on your system. Please install it first" >&2
	exit 1
fi

# Check if dropbox in not installed on your system
if ! [ -x "$(command -v dropbox)" ]; then
	echo "Dropgit Error: You don't have dropbox on your system. Please install it first" >&2
	exit 2
fi

BASE_DIR="$(basename `git rev-parse --show-toplevel`)"
git init --bare ~/Dropbox/git/$BASE_DIR.git
git remote add origin ~/Dropbox/git/$BASE_DIR.git
