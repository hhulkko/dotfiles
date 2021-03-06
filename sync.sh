#!/usr/bin/env bash

cd `dirname $0`
git pull origin master
git submodule update --init
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" -av . ~
source ~/.bash_profile
