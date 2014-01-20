OS=`uname` 

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

if [ -f ~/.private_aliases ]; then
  . ~/.private_aliases
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

shopt -s checkwinsize
shopt -s histappend
shopt -s dotglob
