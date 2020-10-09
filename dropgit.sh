#!/bin/sh

BASE_DIR="$(basename `git rev-parse --show-toplevel`)"

git init --bare ~/Dropbox/git/$BASE_DIR.git

git remote add origin ~/Dropbox/git/$BASE_DIR.git

