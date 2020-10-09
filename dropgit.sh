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

# Check if current directory is not a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
	echo "Dropgit Error: This directory is not a git repository. Please first run (git init)" >&2
	exit 3
fi

# Create Dropbox and git directories if they do not exist
mkdir -pv ~/Dropbox/git

# Find the base dir for git repository
BASE_DIR="$(basename `git rev-parse --show-toplevel`)" && echo "BASE GIT DIRECTORY: $BASE_DIR"

# Create git bare repo on Dropbox
git init --bare ~/Dropbox/git/$BASE_DIR.git && echo "Create git bare repo in dropbox"

# Check if there is a previous dropbox remote rm it
(git remote rm dropbox && echo "Previous dropbox remote removed") || echo "Previous Dropbox remote checked"

# Add new remote to git repository
git remote add dropbox ~/Dropbox/git/$BASE_DIR.git && echo "Add dropbox remote to your git repository"
